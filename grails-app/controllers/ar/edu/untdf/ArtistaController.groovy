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
                    //redirect(action:"registrar", params:params) //aca va el error de la password
                }     
                else if (artistaInstance.save()) {     
                    //session.user = artistaInstance
                    //message= "El usuario se registró con éxito, realice su login"
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

        artistaInstance.properties = params

        if (!artistaInstance.save(flush: true)) {
            render(view: "edit", model: [artistaInstance: artistaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'artista.label', default: 'Artista'), artistaInstance.id])
        redirect(action: "show", id: artistaInstance.id)
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
            redirect(action: "list")
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
}
