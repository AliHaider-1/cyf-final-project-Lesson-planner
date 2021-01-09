import { create } from "axios";

const client = create({ baseURL: "http://localhost:3100" });

export const get = client.get;
