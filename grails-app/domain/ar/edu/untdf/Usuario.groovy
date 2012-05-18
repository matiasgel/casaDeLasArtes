package ar.edu.untdf

class Usuario {
    String login, password, nombre, apellido, email
    int telefono

    static constraints = {
        login size: 5..15, blank: false, unique: true
        password password:true, size: 5..15, blank: false
        nombre maxSize: 20, blank: false
        apellido maxSize: 15, blank: false
        email email: true, blank: false     
    }
     
}

