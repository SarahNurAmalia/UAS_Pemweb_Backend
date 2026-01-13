import db from "../config/db.js";

export const getCategories = (req, res) => {
  db.query("SELECT * FROM product_categories", (err, result) => {
    if (err) return res.status(500).json(err);
    res.json(result);
  });
};

export const createCategory = (req, res) => {
  const { category_name, description } = req.body;
  db.query(
    "INSERT INTO product_categories VALUES (NULL, ?, ?)",
    [category_name, description],
    () => res.json({ message: "Kategori berhasil ditambahkan" })
  );
};

export const updateCategory = (req, res) => {
  db.query(
    "UPDATE product_categories SET category_name=?, description=? WHERE category_id=?",
    [req.body.category_name, req.body.description, req.params.id],
    () => res.json({ message: "Kategori berhasil diupdate" })
  );
};

export const deleteCategory = (req, res) => {
  db.query(
    "DELETE FROM product_categories WHERE category_id=?",
    [req.params.id],
    () => res.json({ message: "Kategori berhasil dihapus" })
  );
};
