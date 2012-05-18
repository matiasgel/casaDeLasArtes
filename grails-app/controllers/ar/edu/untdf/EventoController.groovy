package ar.edu.untdf

import org.springframework.dao.DataIntegrityViolationException

class EventoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [eventoInstanceList: Evento.list(params), eventoInstanceTotal: Evento.count()]
    }

    def create() {
        [eventoInstance: new Evento(params)]
    }

    def save() {
        def eventoInstance = new Evento(params)
        if (!eventoInstance.save(flush: true)) {
            render(view: "create", model: [eventoInstance: eventoInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'evento.label', default: 'Evento'), eventoInstance.id])
        redirect(action: "show", id: eventoInstance.id)
    }

    def show() {
        def eventoInstance = Evento.get(params.id)
        if (!eventoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'evento.label', default: 'Evento'), params.id])
            redirect(action: "list")
            return
        }

        [eventoInstance: eventoInstance]
    }

    def edit() {
        def eventoInstance = Evento.get(params.id)
        if (!eventoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'evento.label', default: 'Evento'), params.id])
            redirect(action: "list")
            return
        }

        [eventoInstance: eventoInstance]
    }

    def update() {
        def eventoInstance = Evento.get(params.id)
        if (!eventoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'evento.label', default: 'Evento'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (eventoInstance.version > version) {
                eventoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'evento.label', default: 'Evento')] as Object[],
                          "Another user has updated this Evento while you were editing")
                render(view: "edit", model: [eventoInstance: eventoInstance])
                return
            }
        }

        eventoInstance.properties = params

        if (!eventoInstance.save(flush: true)) {
            render(view: "edit", model: [eventoInstance: eventoInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'evento.label', default: 'Evento'), eventoInstance.id])
        redirect(action: "show", id: eventoInstance.id)
    }

    def delete() {
        def eventoInstance = Evento.get(params.id)
        if (!eventoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'evento.label', default: 'Evento'), params.id])
            redirect(action: "list")
            return
        }

        try {
            eventoInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'evento.label', default: 'Evento'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'evento.label', default: 'Evento'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
