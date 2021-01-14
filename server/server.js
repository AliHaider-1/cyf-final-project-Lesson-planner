/* import http from "http";

import app from "./app";

const port = parseInt(process.env.PORT || "3000");

const server = http.createServer(app);

server.listen(port);

server.on("listening", () => {
	const addr = server.address();
	const bind = typeof addr === "string" ? `pipe ${addr}` : `port ${addr.port}`;
	// eslint-disable-next-line no-console
	console.log(`Listening on ${bind}`);
});
*/

const { Pool } = require("pg");
let pool;
let config = {
    host: "localhost",
    user: "postgres", //'ALI HAIDER',
    database: "lesson_planner", // 'mylocaldb',
    password: process.env.DBPASSWORD,
    port: 5432,
};
pool = new Pool(config);  
require("dotenv").config();
const express = require("express");
const cors = require("cors");
const morgan = require("morgan");
const app = express();
const db = require("./db");
app.use(morgan("dev"));
app.use(express.json());
app.use(cors());
const port = parseInt(process.env.PORT || "3001");
app.get("/api/", async (req, res) => {
    try {
        res.send("Welcome to CYF volunteers website");
    } catch (error) {
        console.log(error.message);
    }
});
// SELECT m.modulename , l.Date, l.syllabuslink , u.volunteername,l.time ,  l.name  FROM lessons l INNER JOIN modules m ON m.UniqueID=l.module_id INNER JOIN userlessonlink u ON  u.lessonid = l.id where u.roleid=2 AND l.id=1;
app.get("/pageInfoLesson/:id", async (req, res) => {
    try {
        const results = await pool.query(
            " SELECT m.modulename , l.Date, l.syllabuslink , u.volunteername,l.time ,  l.name  FROM lessons l INNER JOIN modules m ON m.UniqueID=l.module_id INNER JOIN userlessonlink u ON  u.lessonid = l.id where u.roleid=2 AND l.id=$1;",[req.params.id,]
        );
        res.status(200).json({
            status: "success",
            results: results.rows.length,
            data: results.rows,
        });
    } catch (error) {
        console.log(error.message);
    }
});
app.get("/lesson", async (req, res) => {
    try {
        const results = await pool.query(
            "SELECT m.modulename , l.name  , l.Date ,l.time , l.id  FROM lessons l INNER JOIN modules m ON m.UniqueID=l.module_id;"
        );
        res.status(200).json({
            status: "success",
            results: results.rows.length,
            data: results.rows,
        });
    } catch (error) {
        console.log(error.message);
    }
});