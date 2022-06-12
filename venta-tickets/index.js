import Eventos from './routers/EventosRouter';
import Usuarios from './routers/UsuariosRouter';
import Tickets from './routers/TicketsRouter'
const express = require('express');
const app = express();
const PORT = 3000;

app.listen(PORT);

app.get('/', (req,res) => {
    res.status(200).json('hola Pollo');
});

app.use('/eventos',Eventos);
app.use('/usuarios',Usuarios);
app.use('/tickets',Tickets);

