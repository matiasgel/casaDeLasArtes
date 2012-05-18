package ar.edu.untdf

import org.springframework.dao.DataIntegrityViolationException

class ProyectoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [proyectoInstanceList: Proyecto.list(params), proyectoInstanceTotal: Proyecto.count()]
    }

    def create() {
        [proyectoInstance: new Proyecto(params)]
    }

    def save() {
        def proyectoInstance = new Proyecto(params)
        if (!proyectoInstance.save(flush: true)) {
            render(view: "create", model: [proyectoInstance: proyectoInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'proyecto.label', default: 'Proyecto'), proyectoInstance.id])
        redirect(action: "show", id: proyectoInstance.id)
    }

    def show() {
        def proyectoInstance = Proyecto.get(params.id)
        if (!proyectoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'proyecto.label', default: 'Proyecto'), params.id])
            redirect(action: "list")
            return
        }

        [proyectoInstance: proyectoInstance]
    }

    def edit() {
        def proyectoInstance = Proyecto.get(params.id)
        if (!proyectoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'proyecto.label', default: 'Proyecto'), params.id])
            redirect(action: "list")
            return
        }

        [proyectoInstance: proyectoInstance]
    }

    def update() {
        def proyectoInstance = Proyecto.get(params.id)
        if (!proyectoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'proyecto.label', default: 'Proyecto'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (proyectoInstance.version > version) {
                proyectoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'proyecto.label', default: 'Proyecto')] as Object[],
                          "Another user has updated this Proyecto while you were editing")
                render(view: "edit", model: [proyectoInstance: proyectoInstance])
                return
            }
        }

        proyectoInstance.properties = params

        if (!proyectoInstance.save(flush: true)) {
            render(view: "edit", model: [proyectoInstance: proyectoInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'proyecto.label', default: 'Proyecto'), proyectoInstance.id])
        redirect(action: "show", id: proyectoInstance.id)
    }

    def delete() {
        def proyectoInstance = Proyecto.get(params.id)
        if (!proyectoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'proyecto.label', default: 'Proyecto'), params.id])
            redirect(action: "list")
            return
        }

        try {
            proyectoInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'proyecto.label', default: 'Proyecto'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'proyecto.label', default: 'Proyecto'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
