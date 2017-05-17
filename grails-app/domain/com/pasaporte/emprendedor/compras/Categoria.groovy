package com.pasaporte.emprendedor.compras

class Categoria {

    String nombre
    String descripcion
    static hasMany = [subcategorias: Subcategoria]

    static constraints = {
        nombre blank: false
        descripcion blank: true, nullable: true
    }

    @Override
    String toString() {
        return nombre
    }
}
