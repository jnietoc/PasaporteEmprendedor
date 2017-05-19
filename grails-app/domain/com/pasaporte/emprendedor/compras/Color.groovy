package com.pasaporte.emprendedor.compras

class Color {

    String color

    static constraints = {
        color blank: false, size: 5..30
    }

    @Override
    String toString() {
        return color
    }
}
