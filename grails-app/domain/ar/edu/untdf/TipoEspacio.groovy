package ar.edu.untdf

class TipoEspacio {

    String nombre
    String descripcion

    static constraints = {
        nombre(blank:false)
        descripcion(blank:false, size:5..100)
    }
}
