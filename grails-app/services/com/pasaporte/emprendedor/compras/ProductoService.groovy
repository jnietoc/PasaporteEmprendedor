package com.pasaporte.emprendedor.compras

import grails.transaction.Transactional
import org.springframework.context.ApplicationContext
import org.springframework.context.ApplicationContextAware

@Transactional
class ProductoService implements  ApplicationContextAware {

    ApplicationContext applicationContext

    def cargarImagenes(Producto productoInstance) {
        def imagesDir = applicationContext.getResource(productoInstance.urlImagenes).getFile().toString()

        def imagenes = []
        new File(imagesDir).eachFile { file ->
            imagenes << file.getName()
        }

        productoInstance.imagenes = imagenes
    }
}
