package sistemaventas

class ProductoController {

    def productoService

    def index() {
        [productoInstanceList: productoService.listaProductos()]
    }

    def create(){
        new Producto()
    }

    def save(Producto producto){
        if(producto){
            if(producto.hasErrors()){
                respond producto.errors, view: 'create'
                return
            }
            productoService.guardarProducto(producto)
        }
        redirect(action: 'index')
    }
}
