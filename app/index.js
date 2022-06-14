import express, { urlencoded } from "express";
import Eventos from './routers/EventosRouter.js';
import Usuarios from './routers/UsuariosRouter.js';
import Tickets from './routers/TicketsRouter.js'


const app = express();
app.use(urlencoded({extended: false}));
app.use(express.json());
const PORT = 3000;

app.listen(PORT);

app.get('/', (req,res) => {
    res.status(200).json('hola Pollo');
});

app.use('/eventos',Eventos);
app.use('/usuarios',Usuarios);
app.use('/tickets',Tickets);

