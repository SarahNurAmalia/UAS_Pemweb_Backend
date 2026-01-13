import express from "express";
import { getPenjualan, createPenjualan } from "../controllers/transaksiController.js";

const router = express.Router();

router.get("/", getPenjualan);
router.post("/", createPenjualan);

export default router;
