import Gerente from "../../models/gerente.js";
import {Hotel} from "../../models/hotel.js";



// hotelController.js

// Definimos la función accionMostrarHotel
const accionMostrarHotel = async (req, res) => {
    // Lógica para mostrar los hoteles
    res.send("Mostrar Hoteles");
};

// Definimos la función accionAltaHotel
const accionAltaHotel = async (req, res) => {
    // Lógica para agregar un nuevo hotel
    res.send("Alta de Hotel");
};

// Exportamos ambas funciones
export { accionMostrarHotel, accionAltaHotel };