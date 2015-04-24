package sistemaventas

class ProveedorController {

    def proveedorService

    def index() {
        [proveedorInstanceList: proveedorService.listaProveedores()]
    }

    def create(){
        new Proveedor()
    }

    def save(Proveedor proveedor){
        if(proveedor){
            if(proveedor.hasErrors()){
                respond proveedor.errors, view: 'create'
                return
            }
            proveedorService.guardarProveedor(proveedor)
        }
        redirect(action: 'index')
    }
}
