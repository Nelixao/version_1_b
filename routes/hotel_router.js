import express from "express";
import { accionMostrarHotel, accionAltaHotel } from "../controllers/hotel/hotelController.js";

const router_Hotel = express.Router();

// Consulta de Hoteles -> Ruta de Hoteles
router_Hotel.get("/mostrarHotel", accionMostrarHotel);
router_Hotel.post("/altaHotel", accionAltaHotel);

export default router_Hotel;