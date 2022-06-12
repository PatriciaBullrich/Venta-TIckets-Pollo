import Ticket from "../model/Ticket";
import makeQuery from "../utiles/makeQuery.js";

export const traerTicketsDisponibles = async(params) => {
    const values = Object.values(params);
    const cantParams =  values.reduce((total, nada, index)=>{
        if(index === values.length-1) return total+='?'
        return total += '?,';
    },'')
    const query = `CALL Venta_Tickets.Tickets_TraerLiberados(${cantParams});`;
    try {
        const result = await makeQuery(query,values);
        if(result[0].length === 0 ) return{id: -1, message : 'no hay registros disponibles'};
        var resp = result[0];
    } catch (error) {
        resp = {id: -1, message : error.message}
    }
    return resp;
}

export const AsignarTicket = async (params) => {
    const values = Object.values(params);
    const cantParams =  values.reduce((total, nada, index)=>{
        if(index === values.length-1) return total+='?'
        return total += '?,';
    },'')
    const query = `CALL Venta_Tickets.AsignarTicket(${cantParams});`;
    try{
        const result = await makeQuery(query,values);
        var resp = {id: result[0].id, message: "fue exitosa la operacion"};
    }catch(error){
        resp = {id: -1, message : error.message};
    }
}