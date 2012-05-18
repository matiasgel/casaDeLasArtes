package ar.edu.untdf

class Institucion {

    String nombre
    String tipo /*Ver TIPO*/
    Contacto miContacto

    def asignarResponsable() {}

    static hasMany = [espacios:Espacio]

    static constraints = {
        nombre(blank:false)
        tipo(blank:false, inList:["privada","publica"])
    }
}
