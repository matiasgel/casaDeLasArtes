package ar.edu.untdf

class Categoria {
    String nombre, descripcion
    static hasMany = [artistas:Artista, obras:Obra]
    static belongsTo= [Artista,Obra]
    
    String toString(){
        nombre
       // descripcion
    }
    

    static constraints = {
        nombre blank: false
        descripcion blank: false
    }
}
