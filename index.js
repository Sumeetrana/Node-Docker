const express = require("express");

const app = express();

app.get("/", (req, res) => {
    res.send("Hi there")
})

const port = process.env.PORT || 4040;

app.listen(port, () => {
    console.log("Server is running...");
})