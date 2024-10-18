import jwt from "jsonwebtoken";
import { prisma } from "../index.js";

async function generateToken(user) {
  return jwt.sign(
    {
      userId: user.usuario_id,
    },
    process.env.secretKey || "thisIsMySecretKey",
    {
      expiresIn: "30d",
    }
  );
}

async function generateRefresher(user, jti) {
  return jwt.sign(
    { userId: user.usuario_id, jti },
    process.env.secretRefreshKey || "thisIsMySecretRefreshKey",
    {
      expiresIn: "30d",
    }
  );
}

async function createPair(user, jti) {
  const token = await generateToken(user);
  const refresher = await generateRefresher(user, jti);
  console.log(refresher);
  await saveTokenToDatabase(refresher, token, jti, user.usuario_id);

  return { token, refresher };
}

async function saveTokenToDatabase(refresher, token, jti, userId) {
  return await prisma.token.create({
    data: {
      token,
      refrescar_token: refresher,
      usuario_id: userId,
    },
  });
}

export default { createPair, saveTokenToDatabase };
