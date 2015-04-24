package sistemaventas

class Proveedor {

    String nombre
    Direccion direccion
    Telefono telefono
    String pagWeb

    static constraints = {
        nombre nullable: false, blank: false
        direccion nullable: true
        telefono nullable: true
        pagWeb nullable: true, blank: true
    }

    String toString(){
        nombre
    }
}
