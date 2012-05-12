package ar.edu.untdf

import org.springframework.dao.DataIntegrityViolationException

class RegistrableController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [registrableInstanceList: Registrable.list(params), registrableInstanceTotal: Registrable.count()]
    }

    def create() {
        [registrableInstance: new Registrable(params)]
    }

    def save() {
        def registrableInstance = new Registrable(params)
        if (!registrableInstance.save(flush: true)) {
            render(view: "create", model: [registrableInstance: registrableInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'registrable.label', default: 'Registrable'), registrableInstance.id])
        redirect(action: "show", id: registrableInstance.id)
    }

    def show() {
        def registrableInstance = Registrable.get(params.id)
        if (!registrableInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'registrable.label', default: 'Registrable'), params.id])
            redirect(action: "list")
            return
        }

        [registrableInstance: registrableInstance]
    }

    def edit() {
        def registrableInstance = Registrable.get(params.id)
        if (!registrableInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'registrable.label', default: 'Registrable'), params.id])
            redirect(action: "list")
            return
        }

        [registrableInstance: registrableInstance]
    }

    def update() {
        def registrableInstance = Registrable.get(params.id)
        if (!registrableInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'registrable.label', default: 'Registrable'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (registrableInstance.version > version) {
                registrableInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'registrable.label', default: 'Registrable')] as Object[],
                          "Another user has updated this Registrable while you were editing")
                render(view: "edit", model: [registrableInstance: registrableInstance])
                return
            }
        }

        registrableInstance.properties = params

        if (!registrableInstance.save(flush: true)) {
            render(view: "edit", model: [registrableInstance: registrableInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'registrable.label', default: 'Registrable'), registrableInstance.id])
        redirect(action: "show", id: registrableInstance.id)
    }

    def delete() {
        def registrableInstance = Registrable.get(params.id)
        if (!registrableInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'registrable.label', default: 'Registrable'), params.id])
            redirect(action: "list")
            return
        }

        try {
            registrableInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'registrable.label', default: 'Registrable'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'registrable.label', default: 'Registrable'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
