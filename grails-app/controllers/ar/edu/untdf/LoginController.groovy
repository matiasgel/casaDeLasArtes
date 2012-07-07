package ar.edu.untdf

class LoginController {
    def static layout="principal"
    def index() {}

    def loginForm() {}
    
    def login(LoginCommand cmd) {

        def message=""
        if (cmd.hasErrors()) {
            message = "El nombre de usuario ${params.username} no es valido"
            render(view:"index", model:["message":message])
        }
        else {
            def artista = Artista.findByLogin(params.username)
            if (artista == null) 
            message = "El nombre de usuario ${params.username} no esta registrado" 
            else
            if (("admin" == artista.login) && ("admin" == artista.password)) {
                render(view:'indexAdmin', model:["message":message])
            }
            
            else
            if (artista.password == params.password) {
                session.user = artista
                redirect(controller:"artista", action:"show",id: artista.id)                        
            }                
        }
    }

    def logout() {
        session.user=null
        redirect(uri:"/")
    }
}

class LoginCommand {
    String username
    String password
    static constraints = {
        username(blank: false, minSize: 5)
        password(blank: false, minSize: 5)
    }
}
