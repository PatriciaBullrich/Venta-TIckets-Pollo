import Evento from "../model/Evento.js";
import makeQuery from "../utiles/makeQuery.js";

export const traerEventos = async () => {
    const query = 'CALL Venta_Tickets.Eventos_obtenerTodos();';
    try {
        const result = await makeQuery(query);
        if(result[0].length === 0 ) return{id: -1, message : 'no hay registros disponibles'};
        var resp = result[0];
    } catch (error) {
        resp = {id: -1, message : error.message}
    }
    return resp;
}
