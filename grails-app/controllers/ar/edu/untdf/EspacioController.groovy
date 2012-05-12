package ar.edu.untdf

import org.springframework.dao.DataIntegrityViolationException

class EspacioController {

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
        def espacioInstance = new Espacio(params)
        if (!espacioInstance.save(flush: true)) {
            render(view: "create", model: [espacioInstance: espacioInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'espacio.label', default: 'Espacio'), espacioInstance.id])
        redirect(action: "show", id: espacioInstance.id)
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
        if (!espacioInstance) {
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

        espacioInstance.properties = params

        if (!espacioInstance.save(flush: true)) {
            render(view: "edit", model: [espacioInstance: espacioInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'espacio.label', default: 'Espacio'), espacioInstance.id])
        redirect(action: "show", id: espacioInstance.id)
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
}
