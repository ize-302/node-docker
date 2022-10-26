// We can use express as shown as below
const express = require('express')
const app = express()

const PORT = process.env.PORT || 8080
const HOST = '0.0.0.0';

app.get('/', (req, res) => {
  res.status(200).json({
    message: 'It works!'
  })
})

app.listen(PORT, HOST, () => {
  console.log(`Running on http://${HOST}:${PORT}`);
})