package sistemaventas

class Producto {

    String nombre
    BigDecimal precioActual
    Integer stock
    Proveedor proveedor

    static belongsTo = [categoria: Categoria]

    static constraints = {
        nombre nullable: false, blank: false
        precioActual nullable: false
        stock nullable: false
        proveedor nullable: false
        categoria nullable: false
    }

    String toString(){
        nombre
    }
}
