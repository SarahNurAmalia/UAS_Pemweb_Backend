import db from "../config/db.js";

/* =======================
   GET ALL PRODUCTS
======================= */
export const getProducts = async (req, res) => {
  try {
    const [rows] = await db.query(
      "SELECT * FROM products"
    );
    res.json(rows);
  } catch (err) {
    res.status(500).json(err);
  }
};


// get product by category
export const getProductByCategory = async (req, res) => {
  try {
    const { categoryId } = req.params;

    const [rows] = await db.query(
      "SELECT * FROM products WHERE CATEGORY_ID = ?",
      [categoryId]
    );

    res.json(rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};


/* =======================
   GET PRODUCT BY ID
======================= */
export const getProductById = async (req, res) => {
  try {
    const { id } = req.params;
    const [rows] = await db.query(
      "SELECT * FROM products WHERE PRODUCT_ID = ?",
      [id]
    );
    res.json(rows[0]);
  } catch (err) {
    res.status(500).json(err);
  }
};

/* =======================
   CREATE PRODUCT
======================= */
export const createProduct = async (req, res) => {
  try {
    const {
      PRODUCT_NAME,
      PRICE,
      CATEGORY_ID,
      STOCK
    } = req.body;

    const sql = `
      INSERT INTO products
      (PRODUCT_NAME, PRICE, CATEGORY_ID, STOCK,
       CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
      VALUES (?, ?, ?, ?, CURDATE(), 'ADMIN', CURDATE(), 'ADMIN')
    `;

    await db.query(sql, [
      PRODUCT_NAME,
      PRICE,
      CATEGORY_ID,
      STOCK
    ]);

    res.json({ message: "Product berhasil ditambahkan" });
  } catch (err) {
    res.status(500).json(err);
  }
};

/* =======================
   UPDATE PRODUCT
======================= */
export const updateProduct = async (req, res) => {
  try {
    const { id } = req.params;
    const {
      PRODUCT_NAME,
      PRICE,
      STOCK
    } = req.body;

    const sql = `
      UPDATE products
      SET PRODUCT_NAME = ?, PRICE = ?, STOCK = ?,
          UPDATED_AT = CURDATE(), UPDATED_BY = 'ADMIN'
      WHERE PRODUCT_ID = ?
    `;

    await db.query(sql, [
      PRODUCT_NAME,
      PRICE,
      STOCK,
      id
    ]);

    res.json({ message: "Product berhasil diupdate" });
  } catch (err) {
    res.status(500).json(err);
  }
};

/* =======================
   DELETE PRODUCT
======================= */
export const deleteProduct = async (req, res) => {
  try {
    const { id } = req.params;

    await db.query(
      "DELETE FROM products WHERE PRODUCT_ID = ?",
      [id]
    );

    res.json({ message: "Product berhasil dihapus" });
  } catch (err) {
    res.status(500).json(err);
  }
};
