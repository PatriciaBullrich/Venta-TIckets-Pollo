import { Router } from "express";
import { traerEventos } from './dao/EventoDao';
const router = Router();


router.route('/')
    .get(  async (req,res) => {
        const response = await traerEventos();
        if(response.id === -1) res.status(400).json(response.message);
        res.status(200).json(response);
    })

export default router;