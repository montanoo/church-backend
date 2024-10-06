import app from "./app.js";
import router from "./routes/router.js";

app.use("/api", router);

app.listen(process.env.PORT || 3000, () => {
  console.log("Now listening to: ", process.env.PORT || 3000);
});
