const express = require('express')
const db = require('../db')
const router = express.Router()
const utils = require('../utils')
const jwt = require('jsonwebtoken')
const config = require('../config')
const cryptoJs = require('crypto-js')

router.post('/signup', (request, response) => {
  const { firstName, lastName, email, phone, password } = request.body

  // encrypt the password
  const encryptedPassword = String(cryptoJs.SHA256(password))

  // register user
  const statement = `insert into User (firstName, lastName, email, phone, password) values (?, ?, ?, ?, ?)`
  db.pool.execute(
    statement,
    [firstName, lastName, email, phone, encryptedPassword],
    (error, result) => {
      response.send(utils.createResult(error, result))
    }
  )
})

router.post('/signin', (request, response) => {
  const { email, password } = request.body

  console.log(request.body)

  // encrypt the password
  const encryptedPassword = String(cryptoJs.SHA256(password))

  // login user
  const statement = `SELECT id, firstName, lastName, phone FROM User WHERE email = ? and password = ?`
  db.pool.execute(statement, [email, encryptedPassword], (error, users) => {
    if (error) {
      // got an error while executing the query
      response.send(utils.createError(error))
    } else {
      // check if there is any user with email and password
      if (users.length == 0) {
        // user does not exist
        response.send(utils.createError('User does not exist'))
      } else {
        // get the user details
        const { id, firstName, lastName, phone } = users[0]

        // create the payload
        const payload = {
          id,
          firstName,
          lastName,
        }

        // create the token
        const token = jwt.sign(payload, config.secret)

        console.log({
          token,
          phone,
          firstName,
          lastName,
        })
        response.send(
          utils.createSuccess({
            token,
            phone,
            firstName,
            lastName,
          })
        )
      }
    }
  })
})

module.exports = router
