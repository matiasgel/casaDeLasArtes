package ar.edu.untdf

class Categoria {
    String nombre, descripcion
    static hasMany = [artistas:Artista, obras:Obra]
    static belongsTo= [Artista,Obra]
    

    static constraints = {
        nombre blank: false
        descripcion blank: false
    }
}
