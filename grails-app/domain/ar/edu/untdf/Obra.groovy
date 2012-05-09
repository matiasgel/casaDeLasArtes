package ar.edu.untdf

class Obra {
    String nombre, descripcion
    static hasMany = [categorias:Categoria]
    static belongsTo = Categoria

    static constraints = {
    }
}
