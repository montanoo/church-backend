// write the best router here!
import express from "express";

const router = express.Router();

router.get("/hello", (req, res) => {
  return res.send("Received a GET HTTP method.");
});

export default router;
