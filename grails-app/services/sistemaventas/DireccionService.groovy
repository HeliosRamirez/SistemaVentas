package sistemaventas

import grails.transaction.Transactional

@Transactional
class DireccionService {

    def listaDirecciones() {
        Direccion.list()
    }

    def guardarDireccion(Direccion direccion){
        direccion.save(flush: true)
    }
}
