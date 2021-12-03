const express = require("express");

const app = express();

app.get("/", (req, res, next) => {
  res.send("<h1>Hello from app3.com</h1>");
});

const PORT = 24;

app.listen(PORT, () => {
  console.log(`Server started running on ${PORT} ....`);
});
