package ar.edu.untdf
import groovy.util.*

class GeocoderService
{
    boolean transactional = true

    // http://maps.googleapis.com/maps/api/geocode/xml?address=Ushuaia&sensor=false
    def geocodeEspacio(String direccion,calle) {
        def base = "http://maps.googleapis.com/maps/api/geocode/xml?address="
        def qs = []
        qs << URLEncoder.encode(direccion)
        qs << URLEncoder.encode(calle)
        qs << "Ushuaia&sensor=false"
        def url = new URL(base + qs.join("+"))
        def connection = url.openConnection()
        def result = [:]
        if(connection.responseCode == 200)
        {
            def xml = connection.content.text
            def georeferencia = new XmlSlurper().parseText(xml)
            result.latitud = georeferencia.GeocodeResponse.result.geometry.location.lat as String
            result.longitud = georeferencia.GeocodeResponse.result.geometry.location.lng as String
        }
        else
        {
            log.error("GeocoderService.geocodeEspacio FAILED")
            log.error(url)
            log.error(connection.responseCode)
            log.error(connection.responseMessage)
        }      
        return result
    }
}