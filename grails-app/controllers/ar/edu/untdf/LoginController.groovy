package ar.edu.untdf

class LoginController {

    def index() {}

    def loginForm() {}

    def login(LoginCommand cmd) {

        def message=""
        if (cmd.hasErrors()) {
            message = "El nombre de usuario ${params.username} no es valido"
        }else{
           def artista = Artista.findByLogin(params.username)
           if (artista == null)
                message = "El nombre de usuario ${params.username} no esta registrado"
           else
                {
                    if (artista.password == params.password)
                        message = "Bienvenido a la pagina de la Casa de las artes, ${artista.login}"
                }
        }
        render(view:'index',model:["message":message])
       
    }

    def logout() {}
}

class LoginCommand {
    String username
    String password
    static constraints = {
        username(blank: false, minSize: 5)
        password(blank: false, minSize: 5)
    }
}
