const express = require('express')
var pool = require('../database/database')
var router = express.Router()

// Dump all data basically
router.get('/carriers/', async (req, res) =>{
    let result = await pool.query("select name, superset, state, type from carrier");
    res.send(result.rows);
})

// Get all carriers by insurance type (auto, flood, etc)
router.get('/carriers/insurance-type/:type', async (req, res) =>{
    const insuranceType = req.params.type;
    let result = await pool.query("select name, superset, state, type from carrier where upper(type)=upper($1)", [insuranceType]);
    res.send(result.rows);
})

// Get all carriers by state abbreveation (IL, FL, etc)
router.get('/carriers/state/:state', async (req, res) =>{
    const state = req.params.state;
    let result = await pool.query("select name, superset, state, type from carrier where and upper(state)=upper($1)", [state]);
    res.send(result.rows);
})

// Gett all carriers by type and state
router.get('/carriers/insurance-type/:type/state/:state', async (req, res) =>{
    const insuranceType = req.params.type;
    const state = req.params.state;
    let result = await pool.query("select name, superset, state, type from carrier where upper(type)=upper($1) and upper(state)=upper($2)", [insuranceType, state]);
    res.send(result.rows);
})
module.exports = router
