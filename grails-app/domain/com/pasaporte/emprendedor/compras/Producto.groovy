package com.pasaporte.emprendedor.compras

class Producto {

    String codigo
    String nombre
    Categoria categoria
    Subcategoria subcategoria
    Color color
    BigDecimal precio
    String imagen

    static constraints = {
        codigo blank: false, unique: true
        nombre blank: false, size: 5..30
        categoria nullable: false
        subcategoria nullable: false
        color nullable: false
        precio nullable: false, min: 1.0
        imagen blank: false
    }
}
