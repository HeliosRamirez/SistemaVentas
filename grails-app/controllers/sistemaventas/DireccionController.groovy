package sistemaventas

class DireccionController {

    def direccionService

    def index() {
        [direccionInstanceList: direccionService.listaDirecciones()]
    }

    def create(){
        new Direccion()
    }

    def save(Direccion direccion){
        if(direccion){
            if(direccion.hasErrors()){
                respond direccion.errors, view: 'create'
                return
            }
            direccionService.guardarDireccion(direccion)
        }
        redirect(action: 'index')
    }
}
