const express = require('express')
const cors = require('cors')
const morgan = require('morgan')
const utils = require('./utils')
const jwt = require('jsonwebtoken')
const config = require('./config')

// create the server
const app = express()
app.use(cors())
app.use(morgan('combined'))
app.use(express.json({ limit: '100mb' }))
app.use(express.urlencoded({ extended: true, limit: '100mb' }))

app.use((request, response, next) => {
  // check if token is required
  if (
    request.url == '/user/signup' ||
    request.url == '/user/signin' ||
    request.url.startsWith('/image/')
  ) {
    // token is not required
    next()
  } else {
    // read the token
    const token = request.headers['token']
    if (!token || token.length == 0) {
      response.send(utils.createError('Missing token'))
    } else {
      try {
        // verify the token and decode the payload
        const payload = jwt.verify(token, config.secret)

        // add the payload contents in the request
        request.user = payload

        // continue further
        next()
      } catch (ex) {
        // send the verification failed error
        response.send(utils.createError('Invalid token'))
      }
    }
  }
})

// add the routes
const userRouter = require('./routes/user')
const categoryRouter = require('./routes/category')
const blogsRouter = require('./routes/blog')
const imageRouter = require('./routes/image')

app.use('/user', userRouter)
app.use('/category', categoryRouter)
app.use('/blog', blogsRouter)
app.use('/image', imageRouter)

// start the server
app.listen(4000, '0.0.0.0', () => {
  console.log(`server started on port 4000`)
})
