Algoritmo CalcularCostoFinalProducto
    Definir precioOriginal, cupon, descuentoCupon, precioConDescuento, iva, impuestos, cantidad, descuentoCantidad, destino, peso, costoEnvio, costoFinal Como Real

    Escribir "Ingrese el precio original del producto: $"
    Leer precioOriginal

    Escribir "Ingrese el cupón de descuento (porcentaje o 0 si no tiene): "
    Leer cupon
    descuentoCupon <- Real(cupon) / 100 Si cupon <> "0" Entonces 0 Sino 1 - descuentoCupon

    precioConDescuento <- precioOriginal * (1 - descuentoCupon)

    iva <- 0.12  
    impuestos <- precioConDescuento * iva

    Escribir "Ingrese la cantidad de productos: "
    Leer cantidad

    descuentoCantidad <- 0
    Si cantidad > 1 Entonces
        descuentoCantidad <- 0.05  // 5% de descuento por cantidad
    FinSi

    Escribir "Ingrese el destino del envío: "
    Leer destino

    Escribir "Ingrese el peso del paquete en kg: "
    Leer peso

    costoEnvio <- 10  // Costo fijo
    costoEnvio <- costoEnvio + 2 * peso  // $2 por kg

    costoFinal <- (precioConDescuento * cantidad) + impuestos - (precioConDescuento * cantidad * descuentoCantidad) + costoEnvio

    Escribir "Costo original del producto: $", precioOriginal
    Escribir "Descuento del cupón: $", precioOriginal * descuentoCupon
    Escribir "Impuestos (IVA 12%): $", impuestos
    Escribir "Descuento por cantidad: $", precioOriginal * cantidad * descuentoCantidad
    Escribir "Costo de envío: $", costoEnvio
    Escribir "Costo final del producto: $", costoFinal

    // Almacenamos los componentes en un arreglo
    Definir componenteNombres Como Cadena[6]
    Definir componentes Como Real[6]

    componenteNombres[1] <- "Costo original"
    componenteNombres[2] <- "Descuento del cupón"
    componenteNombres[3] <- "Impuestos"
    componenteNombres[4] <- "Descuento por cantidad"
    componenteNombres[5] <- "Costo de envío"
    componenteNombres[6] <- "Costo final del producto"

    componentes[1] <- precioOriginal
    componentes[2] <- precioOriginal * descuentoCupon
    componentes[3] <- impuestos
    componentes[4] <- precioOriginal * cantidad * descuentoCantidad
    componentes[5] <- costoEnvio
    componentes[6] <- costoFinal

    // Mostramos los componentes en un bucle
    Para i <- 1 Hasta 6 Con Paso 1 Hacer
        Escribir componenteNombres[i], ": $", componentes[i]
    FinPara

FinAlgoritmo
