import mysql from "mysql";

const connection = mysql.createConnection({
	host: "localhost",
	user: 'root',
	password: 'FlorenciaPollo'
});
export default connection;