package ar.edu.untdf

class Obra {
    String nombre, descripcion, pathImagen
    static hasMany = [categorias:Categoria]
    Artista artista
   

    static constraints = {
        nombre blank: false
        descripcion blank: false
    }
}
