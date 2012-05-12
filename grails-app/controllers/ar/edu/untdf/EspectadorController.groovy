package ar.edu.untdf

import org.springframework.dao.DataIntegrityViolationException

class EspectadorController {
    static layout = 'principal'
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [espectadorInstanceList: Espectador.list(params), espectadorInstanceTotal: Espectador.count()]
    }

    def create() {
        [espectadorInstance: new Espectador(params)]
    }

    def save() {
        def espectadorInstance = new Espectador(params)
        if (!espectadorInstance.save(flush: true)) {
            render(view: "create", model: [espectadorInstance: espectadorInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'espectador.label', default: 'Espectador'), espectadorInstance.id])
        redirect(action: "show", id: espectadorInstance.id)
    }

    def show() {
        def espectadorInstance = Espectador.get(params.id)
        if (!espectadorInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'espectador.label', default: 'Espectador'), params.id])
            redirect(action: "list")
            return
        }

        [espectadorInstance: espectadorInstance]
    }

    def edit() {
        def espectadorInstance = Espectador.get(params.id)
        if (!espectadorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'espectador.label', default: 'Espectador'), params.id])
            redirect(action: "list")
            return
        }

        [espectadorInstance: espectadorInstance]
    }

    def update() {
        def espectadorInstance = Espectador.get(params.id)
        if (!espectadorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'espectador.label', default: 'Espectador'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (espectadorInstance.version > version) {
                espectadorInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'espectador.label', default: 'Espectador')] as Object[],
                          "Another user has updated this Espectador while you were editing")
                render(view: "edit", model: [espectadorInstance: espectadorInstance])
                return
            }
        }

        espectadorInstance.properties = params

        if (!espectadorInstance.save(flush: true)) {
            render(view: "edit", model: [espectadorInstance: espectadorInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'espectador.label', default: 'Espectador'), espectadorInstance.id])
        redirect(action: "show", id: espectadorInstance.id)
    }

    def delete() {
        def espectadorInstance = Espectador.get(params.id)
        if (!espectadorInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'espectador.label', default: 'Espectador'), params.id])
            redirect(action: "list")
            return
        }

        try {
            espectadorInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'espectador.label', default: 'Espectador'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'espectador.label', default: 'Espectador'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
