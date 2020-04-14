const express = require('express')
const app = express()
const port = 3000

const { Pool, Client } = require('pg')
// Hardcoded credentials for ease of development 
// Would use env variables (see docker-compose file) or secret store in actual use
// If trying to run outside of docker, change host to localhost
const pool = new Pool({
  user: 'user',
  host: 'host.docker.internal',
  database: 'db',
  password: 'pass',
  port: 5432,
})

/**
 * Four basic endpoints 
 */

// Dump all data basically
app.get('/carriers/', async (req, res) =>{
    let test = await pool.query("select name, superset, state, type from carrier");
    res.send(test.rows);
})

// Get all carriers by insurance type (auto, flood, etc)
app.get('/carriers/insurance-type/:type', async (req, res) =>{
    const insuranceType = req.params.type;
    let test = await pool.query("select name, superset, state, type from carrier where upper(type)=upper($1)", [insuranceType]);
    res.send(test.rows);
})

// Get all carriers by state abbreveation (IL, FL, etc)
app.get('/carriers/state/:state', async (req, res) =>{
    const state = req.params.state;
    let test = await pool.query("select name, superset, state, type from carrier where and upper(state)=upper($1)", [state]);
    res.send(test.rows);
})

// Gett all carriers by type and state
app.get('/carriers/insurance-type/:type/state/:state', async (req, res) =>{
    const insuranceType = req.params.type;
    const state = req.params.state;
    let test = await pool.query("select name, superset, state, type from carrier where upper(type)=upper($1) and upper(state)=upper($2)", [insuranceType, state]);
    res.send(test.rows);
})

app.listen(port, () => console.log(`App listening at http://localhost:${port}`))