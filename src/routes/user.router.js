import express from "express";
import { register } from "../controllers/user/user.controller.js";

const userRouter = express.Router();

userRouter.post("/register", register);

userRouter.get("/test", (req, res) => {
  res.send({ nice: "great request" });
});

export default userRouter;
