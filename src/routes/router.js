// write the best router here!
import express from "express";
import userRouter from "./user.router.js";

const router = express.Router();

router.get("/hello", (req, res) => {
  return res.send("Received a GET HTTP method.");
});

router.use("/user", userRouter);

export default router;
