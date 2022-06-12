import Usuario from "../model/Usuario.js";
import makeQuery from "../utiles/makeQuery.js";

export const insertar = async(params) => { 
    try{
    const values = Object.values(params);
    const cantParams = values.reduce((total, nada, index)=>{
        if(index === values.length-1) return total+='?'
        return total += '?,';
    },'')
    const query = `CALL Venta_Tickets.Usuarios_insertar(${cantParams}]);`;
    const result = await makeQuery(query,values);
    var resp = {id: result[0].id, message: "fue exitosa la operacion"};
    }
    catch(error){
        resp = {id: -1, message : error.message};
    }
    return resp;
 }

 export const traerTickets = async(params) => { 
    try{
        const values =Object.values(params);
        const cantParams = values.reduce((total, nada, index)=>{
            if(index === values.length-1) return total+='?'
            return total += '?,';
        },'')
        const query = `CALL Venta_Tickets.Usuarios_obtenerTicketsDeUnUsuario(${cantParams});`;
        const result = await makeQuery(query,values);
        var resp = result[0];
    } catch (error) {
        resp = {id: -1, message : error.message}
        }   
    return resp;
  }

  export const login = async(params) => {
    try{
        const values =Object.values(params);
        const cantParams = values.reduce((total, nada, index)=>{
            if(index === values.length-1) return total+='?'
            return total += '?,';
        },'')
        const query = `CALL Venta_Tickets.Usuarios_login(${cantParams});`;
        const result = await makeQuery(query,values);
        var resp = result[0][0];
    } catch (error) {
        resp = {id: -1, message : error.message}
        }   
    return resp;
  }