package ar.edu.untdf

class Obra {
    String nombre, descripcion
    static hasMany = [categorias:Categoria]
    Artista artista
   

    static constraints = {
        nombre blank: false
        descripcion blank: false
    }
}
