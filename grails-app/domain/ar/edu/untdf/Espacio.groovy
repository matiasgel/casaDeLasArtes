package ar.edu.untdf

class Espacio {

    int latitud
    int longitud
    int capacidad

    static belongsTo = [miInstitucion:Institucion]

    static hasMany = [tiposEspacios:TipoEspacio]

    static constraints = {
        latitud(blank:false)
        longitud(blank:false)
        capacidad(blank:false)
    }
}
