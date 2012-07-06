package ar.edu.untdf

import org.springframework.dao.DataIntegrityViolationException

class EspacioController {
    def geocoderService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    
  
    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [espacioInstanceList: Espacio.list(params), espacioInstanceTotal: Espacio.count()]
    }

    def create() {
        [espacioInstance: new Espacio(params)]
    }

    def save() {
        def results = geocoderService.geocodeEspacio(params.direccion.params.calle) 
        def espacioInstance = new Espacio(params + results)
        //def espacioInstance = new Espacio(params)
        def espacioAux = Espacio.findByNombre(params.nombre)
            if (espacioAux != null) {
                render(view: "create", model: [espacioInstance: espacioInstance])
                return
            }
            else {
                if (!espacioInstance.miContacto.save(flush: true)||!espacioInstance.save(flush: true)) {
                    render(view: "create", model: [espacioInstance: espacioInstance])
                    return
                }

                    flash.message = message(code: 'default.created.message', args: [message(code: 'espacio.label', default: 'Espacio'), espacioInstance.id])
                redirect(action: "list")
            }
    }

    def show() {
        def espacioInstance = Espacio.get(params.id)
        if (!espacioInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'espacio.label', default: 'Espacio'), params.id])
            redirect(action: "list")
            return
        }

        [espacioInstance: espacioInstance]
    }

    def edit() {
        def espacioInstance = Espacio.get(params.id)
        if (!espacioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'espacio.label', default: 'Espacio'), params.id])
            redirect(action: "list")
            return
        }

        [espacioInstance: espacioInstance]
    }

    def update() {
        def espacioInstance = Espacio.get(params.id)
        if (!espacioInstance)
        {            
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'espacio.label', default: 'Espacio'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (espacioInstance.version > version) {
                espacioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'espacio.label', default: 'Espacio')] as Object[],
                          "Another user has updated this Espacio while you were editing")
                render(view: "edit", model: [espacioInstance: espacioInstance])
                return
            }
        }

        //espacioInstance.properties = params
        def results = geocoderService.geocodeEspacio(params.direccion,params.calle)    
        espacioInstance.properties = params + results
        
        if (!espacioInstance.save(flush: true)) {
            render(view: "edit", model: [espacioInstance: espacioInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'espacio.label', default: 'Espacio'), espacioInstance.id])
        redirect(action: "list")
    }

    def delete() {
        def espacioInstance = Espacio.get(params.id)
        if (!espacioInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'espacio.label', default: 'Espacio'), params.id])
            redirect(action: "list")
            return
        }

        try {
            espacioInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'espacio.label', default: 'Espacio'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'espacio.label', default: 'Espacio'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def listado() {
        ["espacios":Espacio.list(sorter:'nombre', order:'asc')]
    }
}
