import { prisma } from "../../index.js";

async function userExistsWithEmail(email) {
  return await prisma.usuario.findFirst({
    where: {
      email,
    },
  });
}

async function createUser(name, email, password) {
  console.log("creating user", name, email, password);
  try {
    return await prisma.usuario.create({
      data: {
        nombre_usuario: name,
        email,
        password,
        rol: "admin",
      },
    });
  } catch (err) {
    console.log(err.message, "error??");
    return err.message;
  }
}

export default {
  userExistsWithEmail,
  createUser,
};
