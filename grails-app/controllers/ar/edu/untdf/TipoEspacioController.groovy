package ar.edu.untdf

import org.springframework.dao.DataIntegrityViolationException

class TipoEspacioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [tipoEspacioInstanceList: TipoEspacio.list(params), tipoEspacioInstanceTotal: TipoEspacio.count()]
    }

    def create() {
        [tipoEspacioInstance: new TipoEspacio(params)]
    }

    def save() {
        def tipoEspacioInstance = new TipoEspacio(params)
        if (!tipoEspacioInstance.save(flush: true)) {
            render(view: "create", model: [tipoEspacioInstance: tipoEspacioInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'tipoEspacio.label', default: 'TipoEspacio'), tipoEspacioInstance.id])
        redirect(action: "show", id: tipoEspacioInstance.id)
    }

    def show() {
        def tipoEspacioInstance = TipoEspacio.get(params.id)
        if (!tipoEspacioInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoEspacio.label', default: 'TipoEspacio'), params.id])
            redirect(action: "list")
            return
        }

        [tipoEspacioInstance: tipoEspacioInstance]
    }

    def edit() {
        def tipoEspacioInstance = TipoEspacio.get(params.id)
        if (!tipoEspacioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoEspacio.label', default: 'TipoEspacio'), params.id])
            redirect(action: "list")
            return
        }

        [tipoEspacioInstance: tipoEspacioInstance]
    }

    def update() {
        def tipoEspacioInstance = TipoEspacio.get(params.id)
        if (!tipoEspacioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoEspacio.label', default: 'TipoEspacio'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (tipoEspacioInstance.version > version) {
                tipoEspacioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'tipoEspacio.label', default: 'TipoEspacio')] as Object[],
                          "Another user has updated this TipoEspacio while you were editing")
                render(view: "edit", model: [tipoEspacioInstance: tipoEspacioInstance])
                return
            }
        }

        tipoEspacioInstance.properties = params

        if (!tipoEspacioInstance.save(flush: true)) {
            render(view: "edit", model: [tipoEspacioInstance: tipoEspacioInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'tipoEspacio.label', default: 'TipoEspacio'), tipoEspacioInstance.id])
        redirect(action: "show", id: tipoEspacioInstance.id)
    }

    def delete() {
        def tipoEspacioInstance = TipoEspacio.get(params.id)
        if (!tipoEspacioInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoEspacio.label', default: 'TipoEspacio'), params.id])
            redirect(action: "list")
            return
        }

        try {
            tipoEspacioInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'tipoEspacio.label', default: 'TipoEspacio'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'tipoEspacio.label', default: 'TipoEspacio'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
