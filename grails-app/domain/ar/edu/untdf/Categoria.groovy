package ar.edu.untdf

class Categoria {
    String nombre, descripcion
    static hasMany = [artistas:Artista, obras:Obra]
    

    static constraints = {
    }
}
