package ar.edu.untdf

class Proyecto {

    String nombre
    String descripcion
    Date fechaInicio
    Boolean valido

    static hasMany = [misEventos:Evento]

    static constraints = {
        nombre(blank:false)
        fechaInicio(blank:false)
    }
}
