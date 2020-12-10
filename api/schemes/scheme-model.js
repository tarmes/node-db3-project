// scheme-model
const db = require('../../data/db-config')

module.exports = {
   find() {
      return db('schemes')
   },
   findById(id) {
      return db('schemes')
         .where('id', id)
         .first()
   }
}