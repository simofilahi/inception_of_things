const express = require("express");

const app = express();

app.get("/", (req, res, next) => {
  res.send("<h1>Hello from app1.com</h1>");
});

const PORT = 42;

app.listen(PORT, () => {
  console.log(`Server started running on ${PORT} ....`);
});
