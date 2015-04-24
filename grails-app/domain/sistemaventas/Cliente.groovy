package sistemaventas

class Cliente {

    String nombre
    Direccion direccion

    static hasMany = [telefonos: Telefono]

    static constraints = {

        nombre nullable: false, blank: false
        direccion nullable: true
        telefonos nullable: true
    }

    String toString(){
        nombre
    }
}
