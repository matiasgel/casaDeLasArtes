package ar.edu.untdf

class Artista extends Usuario{
    
    static hasMany = [categorias:Categoria,obras:Obra]
    
    

    static constraints = {
        
    }
}
