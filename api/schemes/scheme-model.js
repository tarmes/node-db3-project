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
   },
   findSteps(id) {
      return db('steps')
         .join('schemes', 'steps.scheme_id', 'schemes.id')
         .select('steps.id', 'schemes.scheme_name', 'steps.step_number', 'steps.instructions')
         .where('scheme_id', id)
         .orderBy('steps.step_number', 'asc')
   }
}

// select 
// 	steps.id,
// 	schemes.scheme_name,
// 	steps.step_number,
// 	steps.instructions
// from steps
// join schemes
// 	on steps.scheme_id = schemes.id
// where scheme_id = 2
// order by steps.step_number asc;