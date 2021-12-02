const express = require("express");

const app = express();

app.use(express.static("public"));

app.get("/app-one", (req, res, next) => {
  res.send("index.html");
});

const PORT = 42;

app.listen(PORT, () => {
  console.log(`Server started running on ${PORT} ....`);
});
