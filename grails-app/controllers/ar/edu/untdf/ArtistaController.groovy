package ar.edu.untdf

import org.springframework.dao.DataIntegrityViolationException

class ArtistaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [artistaInstanceList: Artista.list(params), artistaInstanceTotal: Artista.count()]
    }

    def registrar() {
        if(request.method == 'POST') {
            def artistaInstance = new Artista(params)
            def pass=params.confirmapass
            def loguser =Artista.findByLogin(params.login)
            if (loguser != null){
                artistaInstance.errors.rejectValue("login", "El nombre de usuario ${params.login} ya está registrado")
                return [artistaInstance:artistaInstance]
            }
            else{
                if (!artistaInstance.password.equals(pass)){
                    artistaInstance.errors.rejectValue("password", "Las contraseñas no coinciden")
                    return [artistaInstance:artistaInstance]
                }     
                else if (artistaInstance.save()) { 
                    redirect(controller:"login")
                }
                else {
                    return [artistaInstance:artistaInstance]
                }
            }
        }
    }

    def show() {
        def artistaInstance = Artista.get(params.id)
        if (!artistaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'artista.label', default: 'Artista'), params.id])
            redirect(action: "list")
            return
        }

        [artistaInstance: artistaInstance]
    }

    def edit() {
        def artistaInstance = Artista.get(params.id)
        if (!artistaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'artista.label', default: 'Artista'), params.id])
            redirect(action: "list")
            return
        }

        [artistaInstance: artistaInstance]
    }

    def update() {
        def artistaInstance = Artista.get(params.id)
        def artistaNuevo = new Artista(params)
        def pass=params.pass
        if (!artistaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'artista.label', default: 'Artista'), params.id])
            redirect(action: "list")
            return
        }
        if (params.version) {
            def version = params.version.toLong()
            if (artistaInstance.version > version) {
                artistaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                    [message(code: 'artista.label', default: 'Artista')] as Object[],
                          "Another user has updated this Artista while you were editing")
                render(view: "edit", model: [artistaInstance: artistaInstance])
                return 
            }
        }        
        if (!artistaInstance.password.equals(pass)){
            artistaInstance.errors.rejectValue("password", "Las contraseña es incorrecta")
            render(view: "edit", model: [artistaInstance: artistaInstance])
            return  
        }     
        else {
            artistaInstance.properties = params
            if (!artistaInstance.save(flush: true)) {
                render(view: "edit", model: [artistaInstance: artistaInstance])
                return
            }
            flash.message = message(code: 'default.updated.message', args: [message(code: 'artista.label', default: 'Artista'), artistaInstance.id])
            redirect(action: "show", id: artistaInstance.id)
        }
    }

    def delete() {
        def artistaInstance = Artista.get(params.id)
        if (!artistaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'artista.label', default: 'Artista'), params.id])
            redirect(action: "list")
            return
        }

        try {
            artistaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'artista.label', default: 'Artista'), params.id])
            redirect(controller: "login", action: "logout")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'artista.label', default: 'Artista'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
    
    def listarObrasArtista(){
        def artista = Artista.get(params.id)
        [artistaInstance:artista]
        
    }
    
    def mostrarMisObras(){
        def obraInstance = Obra.get(params.obraId)
        def artistaInstance = Artista.get(params.artistaId)
        [obraInstance: obraInstance,artistaInstance:artistaInstance]
    }
    
    def cambiarPass(){
        def artistaInstance = Artista.get(params.id)
        def pass=params.password
        def nuevapass=params.nuevapass
        def confpass=params.confirmapass
        if (!artistaInstance.password.equals(pass)){
            artistaInstance.errors.rejectValue("password", "La contraseña no es correcta")
            render(view: "cambiarPass", model: [artistaInstance: artistaInstance])
            return
        }
        else if (!nuevapass.equals(confpass)) {
            artistaInstance.errors.rejectValue("password", "Las contraseñas no coinciden")
            render(view: "cambiarPass", model: [artistaInstance: artistaInstance])
            return
        }
        else {
            artistaInstance.password = nuevapass
            artistaInstance.save()
            redirect(action: "show", id: params.id)
            return [artistaInstance:artistaInstance]
        }  
    }
    
    def listaParaUsuario(){
       [artistaInstanceList: Artista.list(), artistaInstanceTotal: Artista.count()] 
    }
    
    def seleccionarCategoria(){
        def artista=Artista.get(params.id)
        def check=params.catsElegidas
        def modelo= ["artistaInstance":artista]
        modelo.putAt("categorias", Categoria.list())
        modelo
    }
}
