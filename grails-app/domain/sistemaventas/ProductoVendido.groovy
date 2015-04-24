package sistemaventas

class ProductoVendido {

    String nombre
    BigDecimal precioVenta
    Integer cantidad
    BigDecimal montoTotal

    static belongsTo = [venta: Venta]

    static constraints = {
        nombre nullable: false, blank: false
        precioVenta nullable: false
        cantidad nullable: false
        montoTotal nullable: false
        venta nullable: false
    }
}
