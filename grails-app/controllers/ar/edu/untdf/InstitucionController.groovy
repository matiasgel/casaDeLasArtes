package ar.edu.untdf

import org.springframework.dao.DataIntegrityViolationException

class InstitucionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [institucionInstanceList: Institucion.list(params), institucionInstanceTotal: Institucion.count()]
    }

    def create() {
        [institucionInstance: new Institucion(params)]
    }

    def save() {
        def institucionInstance = new Institucion(params)
        if (!institucionInstance.save(flush: true)) {
            render(view: "create", model: [institucionInstance: institucionInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'institucion.label', default: 'Institucion'), institucionInstance.id])
        redirect(action: "show", id: institucionInstance.id)
    }

    def show() {
        def institucionInstance = Institucion.get(params.id)
        if (!institucionInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'institucion.label', default: 'Institucion'), params.id])
            redirect(action: "list")
            return
        }

        [institucionInstance: institucionInstance]
    }

    def edit() {
        def institucionInstance = Institucion.get(params.id)
        if (!institucionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'institucion.label', default: 'Institucion'), params.id])
            redirect(action: "list")
            return
        }

        [institucionInstance: institucionInstance]
    }

    def update() {
        def institucionInstance = Institucion.get(params.id)
        if (!institucionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'institucion.label', default: 'Institucion'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (institucionInstance.version > version) {
                institucionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'institucion.label', default: 'Institucion')] as Object[],
                          "Another user has updated this Institucion while you were editing")
                render(view: "edit", model: [institucionInstance: institucionInstance])
                return
            }
        }

        institucionInstance.properties = params

        if (!institucionInstance.save(flush: true)) {
            render(view: "edit", model: [institucionInstance: institucionInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'institucion.label', default: 'Institucion'), institucionInstance.id])
        redirect(action: "show", id: institucionInstance.id)
    }

    def delete() {
        def institucionInstance = Institucion.get(params.id)
        if (!institucionInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'institucion.label', default: 'Institucion'), params.id])
            redirect(action: "list")
            return
        }

        try {
            institucionInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'institucion.label', default: 'Institucion'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'institucion.label', default: 'Institucion'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
