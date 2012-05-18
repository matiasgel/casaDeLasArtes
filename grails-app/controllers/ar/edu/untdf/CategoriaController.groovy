package ar.edu.untdf

import org.springframework.dao.DataIntegrityViolationException

class CategoriaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }  
     
    def listar(){
        [categorias:Categoria.list()]
     }
     
    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [categoriaInstanceList: Categoria.list(params), categoriaInstanceTotal: Categoria.count()]
    }

    def create() {
        [categoriaInstance: new Categoria(params)]
    }

    def save() {
        def categoriaInstance = new Categoria(params)
        if (!categoriaInstance.save(flush: true)) {
            render(view: "create", model: [categoriaInstance: categoriaInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'categoria.label', default: 'Categoria'), categoriaInstance.id])
        redirect(action: "show", id: categoriaInstance.id)
    }

    def show() {
        def categoriaInstance = Categoria.get(params.id)
        if (!categoriaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'categoria.label', default: 'Categoria'), params.id])
            redirect(action: "list")
            return
        }

        [categoriaInstance: categoriaInstance]
    }

    def edit() {
        def categoriaInstance = Categoria.get(params.id)
        if (!categoriaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'categoria.label', default: 'Categoria'), params.id])
            redirect(action: "list")
            return
        }

        [categoriaInstance: categoriaInstance]
    }

    def update() {
        def categoriaInstance = Categoria.get(params.id)
        if (!categoriaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'categoria.label', default: 'Categoria'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (categoriaInstance.version > version) {
                categoriaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'categoria.label', default: 'Categoria')] as Object[],
                          "Another user has updated this Categoria while you were editing")
                render(view: "edit", model: [categoriaInstance: categoriaInstance])
                return
            }
        }

        categoriaInstance.properties = params

        if (!categoriaInstance.save(flush: true)) {
            render(view: "edit", model: [categoriaInstance: categoriaInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'categoria.label', default: 'Categoria'), categoriaInstance.id])
        redirect(action: "show", id: categoriaInstance.id)
    }

    def delete() {
        def categoriaInstance = Categoria.get(params.id)
        if (!categoriaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'categoria.label', default: 'Categoria'), params.id])
            redirect(action: "list")
            return
        }

        try {
            categoriaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'categoria.label', default: 'Categoria'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'categoria.label', default: 'Categoria'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
