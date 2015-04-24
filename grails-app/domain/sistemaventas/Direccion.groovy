package sistemaventas

class Direccion {

    String calle
    String numero
    String comuna
    String ciudad

    static constraints = {
        calle nullable: false, blank: false
        numero nullable: true, blank: true
        comuna nullable: false, blank: false
        ciudad nullable: false, blank: false
    }

    String toString(){
        "$calle #$numero $comuna, $ciudad"
    }
}
