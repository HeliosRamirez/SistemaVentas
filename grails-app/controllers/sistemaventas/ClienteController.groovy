package sistemaventas

class ClienteController {

    def clienteService

    def index() {
        [clienteInstanceList: clienteService.listaClientes()]
    }

    def create(){
        new Cliente()
    }

    def save(Cliente cliente){
        if(cliente){
            if(cliente.hasErrors()){
                respond cliente.errors, view: 'create'
                return
            }
            clienteService.guardarCliente(cliente)
        }
        redirect(action: 'index')
    }
}
