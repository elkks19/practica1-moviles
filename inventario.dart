/**
 **  9. Sistema de Inventario (Clases y Herencia): Crea una clase Producto con propiedades como
 **  nombre, precio, y cantidad. Luego, crea una subclase ProductoPerecedero con una propiedad
 **  adicional fechaDeCaducidad. Implementa un sistema que gestione un inventario de productos.
 **/

class Producto {
	String nombre;
	double precio;
	int cantidad;
	
	Producto(this.nombre, this.precio, this.cantidad);
	
	void mostrarDatos() {
		print("Nombre: $nombre");
		print("Precio: $precio");
		print("Cantidad: $cantidad");
	}
}

class ProductoPerecedero extends Producto {
	String fechaDeCaducidad;
	
	ProductoPerecedero(String nombre, double precio, int cantidad, this.fechaDeCaducidad) : super(nombre, precio, cantidad);
	
	@override
	void mostrarDatos() {
		super.mostrarDatos();
		print("Fecha de Caducidad: $fechaDeCaducidad");
	}
}

void main() {
	Producto producto = Producto("Leche", 1.5, 10);
	ProductoPerecedero productoPerecedero = ProductoPerecedero("Yogur", 0.5, 20, "2022-12-31");
	
	producto.mostrarDatos();
	print("");
	productoPerecedero.mostrarDatos();
}
