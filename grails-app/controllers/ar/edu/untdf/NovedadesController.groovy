package ar.edu.untdf

import org.springframework.dao.DataIntegrityViolationException

class NovedadesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [novedadesInstanceList: Novedades.list(params), novedadesInstanceTotal: Novedades.count()]
    }

    def create() {
        [novedadesInstance: new Novedades(params)]
    }

    def save() {
        def novedadesInstance = new Novedades(params)
        if (!novedadesInstance.save(flush: true)) {
            render(view: "create", model: [novedadesInstance: novedadesInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'novedades.label', default: 'Novedades'), novedadesInstance.id])
        redirect(action: "show", id: novedadesInstance.id)
    }

    def show() {
        def novedadesInstance = Novedades.get(params.id)
        if (!novedadesInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'novedades.label', default: 'Novedades'), params.id])
            redirect(action: "list")
            return
        }

        [novedadesInstance: novedadesInstance]
    }

    def edit() {
        def novedadesInstance = Novedades.get(params.id)
        if (!novedadesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'novedades.label', default: 'Novedades'), params.id])
            redirect(action: "list")
            return
        }

        [novedadesInstance: novedadesInstance]
    }
    
    
    
    def update() {
        def novedadesInstance = Novedades.get(params.id)
        if (!novedadesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'novedades.label', default: 'Novedades'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (novedadesInstance.version > version) {
                novedadesInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'novedades.label', default: 'Novedades')] as Object[],
                          "Another user has updated this Novedades while you were editing")
                render(view: "edit", model: [novedadesInstance: novedadesInstance])
                return
            }
        }

        novedadesInstance.properties = params

        if (!novedadesInstance.save(flush: true)) {
            render(view: "edit", model: [novedadesInstance: novedadesInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'novedades.label', default: 'Novedades'), novedadesInstance.id])
        redirect(action: "show", id: novedadesInstance.id)
    }

    def delete() {
        def novedadesInstance = Novedades.get(params.id)
        if (!novedadesInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'novedades.label', default: 'Novedades'), params.id])
            redirect(action: "list")
            return
        }

        try {
            novedadesInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'novedades.label', default: 'Novedades'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'novedades.label', default: 'Novedades'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
