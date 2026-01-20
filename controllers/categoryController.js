import db from "../config/db.js";

/* ==========================
   GET ALL CATEGORIES
========================== */
export const getCategories = async (req, res) => {
  try {
    const [rows] = await db.query(
      "SELECT * FROM product_categories"
    );
    res.json(rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

/* ==========================
   GET CATEGORY BY ID
========================== */
export const getCategoryById = async (req, res) => {
  try {
    const { id } = req.params;

    const [rows] = await db.query(
      "SELECT * FROM product_categories WHERE CATEGORY_ID = ?",
      [id]
    );

    res.json(rows[0]);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};


// get product by category

export const getProductsByCategory = async (req, res) => {
  try {
    const { categoryId } = req.params;

    const [rows] = await db.query(
      `SELECT 
         p.PRODUCT_ID,
         p.PRODUCT_NAME,
         p.PRICE,
         p.STOCK,
         p.CATEGORY_ID
       FROM products p
       WHERE p.CATEGORY_ID = ?`,
      [categoryId]
    );

    res.json(rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};


/* ==========================
   CREATE CATEGORY
========================== */
export const createCategory = async (req, res) => {
  try {
    const { CATEGORY_ID, CATEGORY } = req.body;

    await db.query(
      "INSERT INTO product_categories (CATEGORY_ID, CATEGORY) VALUES (?, ?)",
      [CATEGORY_ID, CATEGORY]
    );

    res.json({ message: "Category berhasil ditambahkan" });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

/* ==========================
   UPDATE CATEGORY
========================== */
export const updateCategory = async (req, res) => {
  try {
    const { id } = req.params;
    const { CATEGORY } = req.body;

    await db.query(
      "UPDATE product_categories SET CATEGORY = ? WHERE CATEGORY_ID = ?",
      [CATEGORY, id]
    );

    res.json({ message: "Category berhasil diupdate" });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

/* ==========================
   DELETE CATEGORY
========================== */
export const deleteCategory = async (req, res) => {
  try {
    const { id } = req.params;

    await db.query(
      "DELETE FROM product_categories WHERE CATEGORY_ID = ?",
      [id]
    );

    res.json({ message: "Category berhasil dihapus" });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
