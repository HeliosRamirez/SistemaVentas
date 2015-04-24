package sistemaventas

class CategoriaController {

    def categoriaService

    def index() {
        [categoriaInstanceList: categoriaService.listaCategorias()]
    }

    def create(){
        new Categoria()
    }

    def save(Categoria categoria){
        if(categoria){
            if(categoria.hasErrors()){
                respond categoria.errors, view: 'create'
                return
            }
            categoriaService.guardarCategoria(categoria)
        }
        redirect(action: 'index')
    }
}
