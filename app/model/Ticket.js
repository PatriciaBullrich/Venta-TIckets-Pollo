export default class Ticket{
    constructor(data){
        this.Id = data.Id;
        this.IdEvento = data.IdEvento;
        this.IdUsuario = data.IdUsuario;
        this.fueUsado = data.fueUsado;
    }
}