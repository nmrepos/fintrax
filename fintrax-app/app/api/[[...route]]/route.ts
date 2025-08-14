import { Hono } from "hono"
import { handle } from "hono/vercel";
import summary from "./summary";

export const runtime = "nodejs";

const app = new Hono().basePath("/api");

const routes = app
  .route("/summary", summary)

export const GET = handle(app);
export const POST = handle(app);
export const PATCH = handle(app);
export const DELETE = handle(app);

export type AppType = typeof routes;
