package ar.edu.untdf
/**
 *libreria de tag ejemplo, implementa un tag para recorrer
 *hash, recibe la coleccion en atributo collection, 
 * en el atributo key el nombre de la variable que recibe
 * la clave y en el atributo var el valor 
 * para ver + info de taglibs propios ver:
 * http://grails.org/doc/latest/guide/theWebLayer.html#taglibs
 * 
**/
class CollectionTagLib 
{
    def each_pair={attrs,body->
        attrs.collection.each(){key,value->
            out << body((attrs.var):value,(attrs.key):key)
        }
    }
}