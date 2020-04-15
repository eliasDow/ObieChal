const express = require('express')
const app = express()
const carrier = require('./routes/carrier')
const port = 3000

app.use(carrier);
//app.use(otherendpoint)

app.listen(port, () => console.log(`App listening at http://localhost:${port}`))
