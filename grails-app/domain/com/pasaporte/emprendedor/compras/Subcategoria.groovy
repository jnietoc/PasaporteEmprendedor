package com.pasaporte.emprendedor.compras

class Subcategoria {

    String nombre
    static belongsTo = [categoria: Categoria]

    static constraints = {
    }

    @Override
    String toString() {
        return nombre
    }
}
