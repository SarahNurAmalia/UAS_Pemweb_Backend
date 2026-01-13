import express from "express";
import cors from "cors";
import dotenv from "dotenv";

import categoryRoutes from "./routes/categoryRoutes.js";
import productRoutes from "./routes/productRoutes.js";
import customerRoutes from "./routes/customerRoutes.js";
import transaksiRoutes from "./routes/transaksiRoutes.js";

dotenv.config();
const app = express();

app.use(cors());
app.use(express.json());

app.use("/categories", categoryRoutes);
app.use("/products", productRoutes);
app.use("/customers", customerRoutes);
app.use("/penjualan", transaksiRoutes);

app.get("/profile", (req, res) => {
  res.json({
    nama: "Sarah Nur Amalia",
    role: "Backend Developer",
    tema: "E-Commerce Alat Kecantikan"
  });
});

app.listen(process.env.PORT, () =>
  console.log(`Server running on port ${process.env.PORT}`)
);
