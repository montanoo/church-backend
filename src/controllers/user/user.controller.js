import tokenService from "../../services/token.service.js";
import userService from "../../services/users/user.service.js";
import { v4 as uuidv4 } from "uuid";

export async function login(request, response) {
  const { email, password } = request.body;
  if (!email || !password) {
    return response
      .status(400)
      .json({ error: "Email and password are required" });
  }
  const exists = await userService.userExistsWithEmail(email);
  if (!exists) {
    return response.status(401).json({ error: "Invalid credentials" });
  }
}

export const register = async (request, response) => {
  try {
    const { name, email, password } = request.body;
    if (!email || !password) {
      return response
        .status(400)
        .json({ error: "Email and password are required" });
    }
    const exists = await userService.userExistsWithEmail(email);
    if (exists) {
      return response
        .status(400)
        .json({ error: "Ya existe un usuario asociado con ese correo" });
    }

    const user = await userService.createUser(name, email, password);
    console.log("we have user", user);
    const jwtId = uuidv4();

    const { token, refresher } = await tokenService.createPair(user, jwtId);
    console.log(token, refresher);
    return response.status(201).json({ data: { ...user, token, refresher } });
  } catch (err) {
    return response.status(500).json({ error: err.message });
  }
};
