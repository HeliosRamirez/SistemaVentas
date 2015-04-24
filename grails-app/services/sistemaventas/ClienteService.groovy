package sistemaventas

import grails.transaction.Transactional

@Transactional
class ClienteService {

    def listaClientes() {
        Cliente.list()
    }

    def guardarCliente(Cliente cliente){
        cliente.save(flush: true)
    }
}
