package com.pasaporte.emprendedor.compras

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CategoriaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


    @Secured(['ROLE_ADMIN', 'ROLE_PROVEEDOR'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Categoria.list(params), model:[categoriaInstanceCount: Categoria.count()]
    }

    @Secured(['ROLE_ADMIN', 'ROLE_PROVEEDOR'])
    def show(Categoria categoriaInstance) {
        respond categoriaInstance
    }

    @Secured(['ROLE_ADMIN', 'ROLE_PROVEEDOR'])
    def create() {
        respond new Categoria(params)
    }

    @Transactional
    @Secured(['ROLE_ADMIN', 'ROLE_PROVEEDOR'])
    def save(Categoria categoriaInstance) {
        if (categoriaInstance == null) {
            notFound()
            return
        }

        if (categoriaInstance.hasErrors()) {
            respond categoriaInstance.errors, view:'create'
            return
        }

        categoriaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'categoria.label', default: 'Categoria'), categoriaInstance.id])
                redirect categoriaInstance
            }
            '*' { respond categoriaInstance, [status: CREATED] }
        }
    }
    @Transactional
    @Secured(['ROLE_ADMIN', 'ROLE_PROVEEDOR'])
    def edit(Categoria categoriaInstance) {
        respond categoriaInstance
    }

    @Transactional
    @Secured(['ROLE_ADMIN', 'ROLE_PROVEEDOR'])
    def update(Categoria categoriaInstance) {
        if (categoriaInstance == null) {
            notFound()
            return
        }

        if (categoriaInstance.hasErrors()) {
            respond categoriaInstance.errors, view:'edit'
            return
        }

        categoriaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'categoria.label', default: 'Categoria'), categoriaInstance.id])
                redirect categoriaInstance
            }
            '*'{ respond categoriaInstance, [status: OK] }
        }
    }

    @Transactional
    @Secured(['ROLE_ADMIN', 'ROLE_PROVEEDOR'])
    def delete(Categoria categoriaInstance) {

        if (categoriaInstance == null) {
            notFound()
            return
        }

        categoriaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'categoria.label', default: 'Categoria'), categoriaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'categoria.label', default: 'Categoria'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    @Secured(['ROLE_ADMIN', 'ROLE_PROVEEDOR'])
    def findSubcategoriasForCategoria() {
        def categoria = Categoria.get(params.categoria.id)
        render(template: 'subcategorias', model:  [subcategoriasList: categoria.subcategorias])
    }
}
