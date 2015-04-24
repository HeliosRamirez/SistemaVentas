package sistemaventas

class Telefono {

    String numero

    static constraints = {
        numero matches: "[\\d]{10}"
    }

    String toString(){
        numero
    }
}
