package ar.edu.untdf

class Institucion {

    String nombre
    String tipoGestion /*tipo de gestion de la institucion: publica o privada, va a ser resueltas con un Enum en el controller...*/
    Contacto miContacto

    def Institucion() {}

    static hasMany = [espacios:Espacio]

    static constraints = {
        nombre(blank:false,minSize:3)
        tipoGestion(blank:false)
    }
}
