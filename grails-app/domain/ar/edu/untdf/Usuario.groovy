package ar.edu.untdf

class Usuario {
    String login, password, nombre, apellido, email
    int telefono

    static constraints = {
        login size: 5..15, blank: false, unique: true
        password size: 5..15, blank: false
        nombre maxSize: 20
        apellido maxSize: 15
        email email: true, blank: false
        
    }
}
