package ar.edu.untdf

class Proyecto {

    String nombre
    String resumen
    Contacto miContacto
    //Date fechaInicio /* Al cliente no le interesa saber la fecha de inicio del proyecto...*/
    Boolean valido

    static hasMany = [misEventos:Evento]

    static constraints = {
        nombre(blank:false)
        resumen(blank:false, size:5..500)
        //fechaInicio(blank:false)
    }
}
