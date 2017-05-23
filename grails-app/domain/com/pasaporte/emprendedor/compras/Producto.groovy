package com.pasaporte.emprendedor.compras

import org.apache.commons.lang.RandomStringUtils

class Producto {

    String codigo
    String nombre
    String marca
    Categoria categoria
    Subcategoria subcategoria
    Color color
    BigDecimal precio
    String urlImagenes
    List<String> imagenes;

    def productoService

    Producto() {
        this.codigo = RandomStringUtils.random(10, true, true).toUpperCase()
    }

    static constraints = {
        codigo blank: false, unique: true
        nombre blank: false, size: 5..30
        marca blank: false
        categoria nullable: false
        subcategoria nullable: false
        color nullable: false
        precio nullable: false, min: 1.0
        urlImagenes blank: false
    }
    @Override
    String toString() {
        return nombre
    }

    static transients = ['imagenes', 'productoService']

}
