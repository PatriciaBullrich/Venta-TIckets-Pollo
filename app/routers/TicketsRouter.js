import { Router } from "express";
import { traerTicketsDisponibles,AsignarTicket } from "../dao/TicketsDao.js";
const router = Router();

// ESPERA PRIMERO EL ID DEL TICKET Y DESPUES EL ID USUARIO
// Y TE SETEA EL ID DEL USUARIO A ESE TICKET
router.route('/').put( async (req,res) => {
    const response = await AsignarTicket(req.body);
    if(response.id === -1) res.status(400).json(response.message);
    res.status(200).json("se reservo el ticket con exito");
})

// ESPERA ID DEL EVENTO Y TE DUEVUELVE UNA LISTA CON TODOS LOS TICKETS DE ESE EVENTO
// QUE NO ESTEN ASIGNADOS A NINGUN USUARIO
router.route('/:id')
    .get(  async (req,res) => {
        const response = await traerTicketsDisponibles(req.params.id);
        if(response.id === -1) res.status(400).json(response.message);
        res.status(200).json(response);
    })
export default router;