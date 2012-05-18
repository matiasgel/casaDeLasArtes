package ar.edu.untdf

import java.sql.Time;

class Evento {

    String nombre
    String tipo
    String descripcion
    Date fechaRealizacion
    Time horaRealizacion
    Date fechaFinalizacion
    Time horaFinalizacion
    Boolean gratuito
    String[] auspiciantes
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
        nombre(blank:false)
        fechaRealizacion(blank:false)
    }
}
