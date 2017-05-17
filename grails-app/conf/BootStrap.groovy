import com.pasaporte.emprendedor.compras.Categoria
import com.pasaporte.emprendedor.compras.Color
import com.pasaporte.emprendedor.seguridad.Rol
import com.pasaporte.emprendedor.seguridad.Usuario
import com.pasaporte.emprendedor.seguridad.UsuarioRol

class BootStrap {

    def init = { servletContext ->
        Usuario admin = new Usuario(username:'admin', password:'secret', enabled:true).save()
        Usuario john = new Usuario(username:'john', password:'secret', enabled:true).save()
        Usuario jane = new Usuario(username:'jane', password:'secret', enabled:true).save()
        Rol adminRole = new Rol(authority: 'ROLE_ADMIN').save()
        Rol userRole = new Rol(authority: 'ROLE_PROVEEDOR').save()
        UsuarioRol.create(admin, adminRole)
        UsuarioRol.create(jane, userRole)
        UsuarioRol.create(john, userRole)

        Color rojo = new Color(color: "Rojo").save()
        Color azul = new Color(color: "Azul").save()
        Color blaco = new Color(color: "Blanco").save()
        Color negro = new Color(color: "Negro").save()
        Color rosa = new Color(color: "Negro").save()
        Color beige = new Color(color: "Negro").save()
        Color cafe = new Color(color: "Negro").save()
        Color verde = new Color(color: "Negro").save()


        def ropa = new Categoria(nombre: "Ropa")
        ropa.addToSubcategorias([nombre: "Playeras"])
        ropa.addToSubcategorias([nombre: "Pantalones"])
        ropa.addToSubcategorias([nombre: "Blusas"])
        ropa.addToSubcategorias([nombre: "Camisas"])
        ropa.addToSubcategorias([nombre: "Pants"])

        ropa.save(flush:true,failOnError:true)

        def electronicos = new Categoria(nombre: "Electronicos")
        electronicos.addToSubcategorias([nombre: "Celulares"])
        electronicos.addToSubcategorias([nombre: "Laptops"])
        electronicos.addToSubcategorias([nombre: "Drones"])

        electronicos.save(flush:true,failOnError:true)
        def joyeria = new Categoria(nombre: "Joyeria")
        joyeria.addToSubcategorias([nombre: "Anillos"])
        joyeria.addToSubcategorias([nombre: "Aretes"])
        joyeria.save(flush:true,failOnError:true)
    }
    def destroy = {
    }
}
