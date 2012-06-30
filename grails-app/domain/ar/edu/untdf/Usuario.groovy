package ar.edu.untdf

class Usuario {
    String login, password, nombre, apellido, email
    int telefono

    static constraints = {
        login size: 5..15, blank: false, unique: true
        password password:true, size: 5..15, blank: false
        nombre size: 3..15, blank: false
        apellido size: 3..15, blank: false
        email email: true, blank: false     
    }
     
}

