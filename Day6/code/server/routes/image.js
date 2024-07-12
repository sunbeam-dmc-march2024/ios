const express = require('express')
const router = express.Router()
const fs = require('node:fs')

router.get('/:image', (request, response) => {
  const { image } = request.params

  // read the image contents
  const data = fs.readFileSync(__dirname + '/../documents/' + image)
  response.send(data)
})

module.exports = router
