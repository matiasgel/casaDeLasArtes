package ar.edu.untdf

import java.sql.Time;

class Evento {

    String nombre /* Representa el titulo de la "agenda cultural" COMENTARIO PARA COLO SENSAN...*/
    String tipo
    String observacion
    //Date fechaRealizacion
    Time fechahoraRealizacion
    //Date fechaFinalizacion
    Time fechahoraFinalizacion
    Double valorEntrada
    // String[] auspiciantes /* Inicialmente agregamos este atr. por que el cliente necesitaba saber los auspiciantes del evento...*/
    Espacio miEspacio
    Contacto miContacto

    def asignarEspacio() {}

    def modificarEspacio() {}

    def registrarArtista() {}

    def eliminarArtista() {}

    def asignarContacto() {}

    def eliminarContacto() {}

    static belongsTo = [miProyecto:Proyecto]

    static hasMany = [artistas:Artista]

    static constraints = {
        nombre(blank:false, size:4..50)
        fechahoraRealizacion(blank:false)
        miEspacio(blank:false)
        miContacto(blank:false)
        valorEntrada(blank:false)
    }
}
