package com.pasaporte.emprendedor.compras

class DescripcionProducto {

    String tamano
    Talla talla
    String material

    static constraints = {
        tamano blank: false
        talla nullable: false
        material blank: false
    }
}
