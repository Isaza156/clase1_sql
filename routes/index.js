const express = require('express');

const router = express.Router();

const mysqlConnection = require('../bd');

router.get('/create', (req, res) => {
    mysqlConnection.query('CREATE TABLE reserva2 WHERE IF NOT EXIST... (id int(11) NOT NULL, mes int(50) NOT NULL, dia int(50) NOT NULL, placa varchar(50) NOT NULL)', (err, rows, fields) => {
        if (!err) {
            res.json(rows);
        } else {
            console.log(err);
        }
    })
});

router.get('/', (req, res) => {
    mysqlConnection.query('SELECT * FROM reserva', (err, rows, fields) => {
        if (!err) {
            res.json(rows);
        } else {
            console.log(err);
        }
    })
});

router.get('/:id', (req, res) => {
    const { id } = req.params;
    console.log(id);
    mysqlConnection.query('SELECT * FROM reserva WHERE id = ?', [id], (err, rows, fields) => {
        if (!err) {
            res.json(rows[0]);
        } else {
            console.log(err)
        }
    })
});

router.post('/', (req, res) => {  
    mysqlConnection.query('INSERT INTO reserva (mes, dia, hora) VALUES (12, 17, 9)', (err, rows, fields) => {
        if (!err) {
            res.json(rows[0]);
        } else {
            console.log(err)
        }
    })
});

router.put('/:id', (req, res) => {
    const { id } = req.params;
    mysqlConnection.query('UPDATE reserva SET mes = 2 WHERE id = ?', [id], (err, rows, fields) => {
        if (!err) {
            res.json(rows[0]);
        } else {
            console.log(err)
        }
    })
});

router.delete('/:id', (req, res) => {
    const { id } = req.params;
    mysqlConnection.query('DELETE FROM reserva WHERE id = ?', [id], (err, rows, fields) => {
        if (!err) {
            res.json(rows[0]);
        } else {
            console.log(err)
        }
    })
});



module.exports = router;