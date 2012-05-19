package ar.edu.untdf

class Artista extends Usuario{
    //mmmmmm
    
    static hasMany = [categorias:Categoria,obras:Obra]
    List obras
    
    String toString(){
        nombre
    }
    
    

    static constraints = {
        
    }
}
