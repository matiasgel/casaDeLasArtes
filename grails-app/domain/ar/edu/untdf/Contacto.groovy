package ar.edu.untdf

class Contacto {

    String apellido
    String nombre
    String email
    int telefono

    static constraints = {
        apellido(blank:false, size:4..50)
        nombre(blank:false, size:4..50)
        email(blank:false, email:true)
    }
}
