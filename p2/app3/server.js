const express = require("express");

const app = express();

app.use(express.static("public"));

app.get("/app-three", (req, res, next) => {
  res.send("index.html");
});

const PORT = 24;

app.listen(PORT, () => {
  console.log(`Server started running on ${PORT} ....`);
});
