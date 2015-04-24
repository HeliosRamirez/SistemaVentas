package sistemaventas

import grails.transaction.Transactional

@Transactional
class ProveedorService {

    def listaProveedores() {
        Proveedor.list()
    }

    def guardarProveedor(Proveedor proveedor){
        proveedor.save(flush: true)
    }
}
