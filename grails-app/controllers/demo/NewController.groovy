package demo

class NewController {

    def index() { 
        render(view:'new')
    
    }
    def guardar(){
        render(view:'new',model:['message':"la password es: ${params.pass}"])
    }
}
