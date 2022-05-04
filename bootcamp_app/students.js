const { Pool } = require('pg');

const pool = new Pool ({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.connect();

const cohort = process.argv[2];
const limit = process.argv[3];

pool.query(`
SELECT students.id, students.name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${cohort}%'
LIMIT ${limit || 5};
`)
  .then(res => {
    // console.log(res.rows);
    res.rows.forEach(user => {
      console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort`);
    })
  })
  .catch(err => console.log('query error', err.stack));