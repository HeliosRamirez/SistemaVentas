package sistemaventas

class Categoria {

    String nombre
    String descripcion

    static constraints = {
        nombre nullable: false, blank: false
        descripcion nullable: true, blank: true
    }

    String toString(){
        nombre
    }
}
