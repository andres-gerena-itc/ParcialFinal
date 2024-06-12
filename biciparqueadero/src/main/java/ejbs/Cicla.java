package ejbs;


import java.util.Date;

import jakarta.ejb.LocalBean;
import jakarta.ejb.Stateful;

/**
 * Session Bean implementation class Cicla
 */
@Stateful
@LocalBean
public class Cicla implements CiclaRemote {
		public int id, codigo, precio_dia;
		public String color, marca, pais, material;
		public Date fecha_prestamo, fecha_entrega;

    /**	
     * Default constructor. 
     */
    public Cicla() {
        // TODO Auto-generated constructor stub
    }
    
    public interface CiclaRemote {
    	// imprime toda la información del libro
    	public void setCicla(int id, String color, String marca, String pais, int codigo, String material, int precio_dia,
    			String fecha_prestamo, String fecha_entrega);
    	// lógica de negocios
    	int tiempoPrestamo();
    	double precioPrestamo();
    	}
    

}
