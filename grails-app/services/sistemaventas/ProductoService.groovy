package sistemaventas

import grails.transaction.Transactional

@Transactional
class ProductoService {

    def listaProductos() {
        Producto.list()
    }

    def guardarProducto(Producto producto){
        producto.save(flush: true)
    }
}
