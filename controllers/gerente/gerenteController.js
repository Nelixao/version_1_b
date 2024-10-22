import db from "../../config/db.js";
import {Gerente} from "../../models/gerente.js";
import Hotel from "../../models/hotel.js";
import MisDatos from "../../models/misDatos.js";



// Se traen todos los hoteles que no tienen Gerente
async function consulta() {
    let hoteles = await db.query(
        "select id_htl as dato1, nombre as dato2 from hoteles where id_htl not in (select id_htl from gerentes)"
        ,{
            model: MisDatos,
            mapToModel:true
        });
        return hoteles;
}

// Creamos la funcion
// Async -> Se espera a que se proporcione la informacion deseada (funcion), no avanza si no los proporciona.
const accionMostrarGerente = async(req, res) => {

    res.render("gerente/altaGerente", {
        pagina: "Alta Gerente",
        info: await consulta()
    });

};

const accionAltaGerente = async(req, res) => {
    console.log("Entra")
    console.log(req.body)
    const gerente=new Gerente(req.body);
    await gerente.save();
    res.render('gerente/altaGerente',{
        pagina:"Exito salvado",
        info:await consulta()}
    );
}


// Exportamos la Funcion
export {accionMostrarGerente, accionAltaGerente};