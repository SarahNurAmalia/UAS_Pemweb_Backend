import express from "express";
import {
  getProducts,
  getProductByCategory,
  getProductById,
  createProduct,
  updateProduct,
  deleteProduct
} from "../controllers/productController.js";

const router = express.Router();

router.get("/", getProducts);
router.get("/category/:id", getProductByCategory);
router.get("/:id", getProductById);
router.post("/", createProduct);
router.put("/:id", updateProduct);
router.delete("/:id", deleteProduct);

export default router;
