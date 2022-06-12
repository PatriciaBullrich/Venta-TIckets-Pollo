import { Router } from "express";
import { insertar,traerTickets,login } from "../dao/UsuariosDao";
const router = Router();

//CREA UN USUARIO
router.route('/')
    .post(  async (req,res) => {
        const response = await insertar(req.body); 
        if(response.id === -1 )return res.status(400).json(response.message);
        res.status(200).json('Se creo el usuario con exito');
    })


// ESPERA UN SOLO PARAMETRO id Y TE DEVUELVE TODOS LOS TICKETS QUE COMPRO ESE USER
router.route('/:id')
    .get(async(req,res) => {
         const response = await traerTickets(req.params.id);
         if(response.id === -1 )return res.status(400).json(response.message);
         res.status(200).json(response);
    })

// ESPERA PRIMERO EMAIL Y DESPUES CLAVE, TE DEVUELVE ESE USUARIO
router.route('/login').post(async (req, res)=> {
    const response = await login(req.body);
    if(response.id === -1) res.status(400).json('error en el mail o contra');
    res.status(200).json(response);
})

export default router;