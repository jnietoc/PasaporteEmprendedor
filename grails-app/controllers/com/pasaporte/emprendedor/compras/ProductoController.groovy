package com.pasaporte.emprendedor.compras

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProductoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured(['ROLE_ADMIN', 'ROLE_PROVEEDOR'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Producto.list(params), model:[productoInstanceCount: Producto.count()]
    }

    @Secured(['ROLE_ADMIN', 'ROLE_PROVEEDOR'])
    def show(Producto productoInstance) {
        def imagesDir = grailsAttributes.getApplicationContext().getResource(productoInstance.urlImagenes).getFile().toString()

        def imagenes = []
        new File(imagesDir).eachFile { file ->
            imagenes << file.getName()
        }

        productoInstance.imagenes = imagenes
        respond productoInstance
    }

    @Secured(['ROLE_ADMIN', 'ROLE_PROVEEDOR'])
    def create() {
        respond new Producto(params)
    }

    @Transactional
    @Secured(['ROLE_ADMIN', 'ROLE_PROVEEDOR'])
    def save(Producto productoInstance) {
        if (productoInstance == null) {
            notFound()
            return
        }

        if (productoInstance.hasErrors()) {
            respond productoInstance.errors, view:'create'
            return
        }



        productoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'Producto.label', default: 'Producto'), productoInstance.id])
                redirect productoInstance
            }
            '*' { respond productoInstance, [status: CREATED] }
        }
    }

    def edit(Producto productoInstance) {
        respond productoInstance
    }

    @Transactional
    @Secured(['ROLE_ADMIN', 'ROLE_PROVEEDOR'])
    def update(Producto productoInstance) {
        if (productoInstance == null) {
            notFound()
            return
        }

        if (productoInstance.hasErrors()) {
            respond productoInstance.errors, view:'edit'
            return
        }

        productoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Producto.label', default: 'Producto'), productoInstance.id])
                redirect productoInstance
            }
            '*'{ respond productoInstance, [status: OK] }
        }
    }

    @Transactional
    @Secured(['ROLE_ADMIN', 'ROLE_PROVEEDOR'])
    def delete(Producto productoInstance) {

        if (productoInstance == null) {
            notFound()
            return
        }

        productoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Producto.label', default: 'Producto'), productoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'Producto.label', default: 'Producto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
