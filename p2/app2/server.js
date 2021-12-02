const express = require("express");

const app = express();

app.use(express.static("public"));

app.get("/app-two", (req, res, next) => {
  res.send("index.html");
});

const PORT = 1337;

app.listen(PORT, () => {
  console.log(`Server started running on ${PORT} ....`);
});
