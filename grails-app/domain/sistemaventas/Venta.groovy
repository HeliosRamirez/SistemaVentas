package sistemaventas

class Venta {

    Date fecha
    Cliente cliente
    Integer descuento
    BigDecimal montoTotal

    static hasMany = [productosVendidos: ProductoVendido]

    static constraints = {
        fecha nullable: false
        cliente nullable: false
        descuento nullable: true
        montoTotal nullable: false
        productosVendidos nullable: false
    }
}
