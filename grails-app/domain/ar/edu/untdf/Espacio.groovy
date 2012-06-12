package ar.edu.untdf

class Espacio {

    String nombre
    Integer latitud
    Integer longitud
    Integer capacidad
    String calleDireccion
    Integer numeroDireccion

    static belongsTo = [miInstitucion:Institucion]

    static hasMany = [tiposEspacios:TipoEspacio]

    static constraints = {
        nombre(blank:false)
        calleDireccion(blank:false)
        numeroDireccion(blank:false)
        capacidad(blank:false)
    }
}
