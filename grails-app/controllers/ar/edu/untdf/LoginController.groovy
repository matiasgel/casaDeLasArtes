package ar.edu.untdf

class LoginController {

    def index() {}

    def loginForm() {}

    def login(LoginCommand cmd) {

        def message=""
        if (cmd.hasErrors()) {
            message = "User not found fo id ${params.username}"

            
        }else{
           message = "fue un exito"
            

        }
        render(view:'index',model:["message":message])
       
    }

    def logout() {}
}

class LoginCommand {
    String username
    String password
    static constraints = {
        username(blank: false, minSize: 6)
        password(blank: false, minSize: 6)
    }
}
