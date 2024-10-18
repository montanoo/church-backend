import app from "./app.js";
import router from "./routes/router.js";
import { PrismaClient } from "@prisma/client";

app.use("/api", router);

app.listen(process.env.PORT || 3000, () => {
  console.log("Now listening to: ", process.env.PORT || 3000);
});

export const prisma = new PrismaClient({
  datasources: {
    db: {
      url: process.env.DATABASE_URL,
    },
  },
});
