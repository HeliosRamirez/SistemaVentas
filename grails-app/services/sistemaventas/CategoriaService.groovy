package sistemaventas

import grails.transaction.Transactional

@Transactional
class CategoriaService {

    def listaCategorias() {
        Categoria.list()
    }

    def guardarCategoria(Categoria categoria){
        categoria.save(flush: true)
    }
}
