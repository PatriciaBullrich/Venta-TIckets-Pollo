import connection from './BD.js'
const makeQuery = (query,params) =>{
    return new Promise((resolve, reject) =>{
        connection.query(query,params,(err,rows,fields) =>{
            if(err) reject (err);
            else resolve(rows);
        });
    });
}
export default makeQuery;