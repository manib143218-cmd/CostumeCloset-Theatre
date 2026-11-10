const fs = require("fs");
const path = require("path");
const db = require("./db");

const schema = fs.readFileSync(
    path.join(__dirname, "schema.sql"),
    "utf8"
);

const seed = fs.readFileSync(
    path.join(__dirname, "seed.sql"),
    "utf8"
);

db.exec(schema);
db.exec(seed);

console.log("Database tables created and sample data inserted!");

db.close();