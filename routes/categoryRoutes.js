import express from "express";
import {
  getCategories,
  getProductsByCategory,
  getCategoryById,
  createCategory,
  updateCategory,
  deleteCategory
} from "../controllers/categoryController.js";

const router = express.Router();

// GET PRODCT BY CATEGORY
router.get("/:categoryId/products", getProductsByCategory);


router.get("/", getCategories);
router.get("/:id", getCategoryById);
router.post("/", createCategory);
router.put("/:id", updateCategory);
router.delete("/:id", deleteCategory);

export default router;
