const { Pool } = require('pg')
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

module.exports = {
  query: (text, params, callback) => {
    return pool.query(text, params, callback)
  },
}
