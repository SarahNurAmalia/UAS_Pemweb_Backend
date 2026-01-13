import db from "../config/db.js";

export const getProducts = async (req, res) => {
  try {
    const [rows] = await db.query(
      "SELECT * FROM products WHERE category_id = 'AC'"
    );
    res.json(rows);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};


export const getProductById = (req, res) => {
  db.query(
    "SELECT * FROM products WHERE product_id=?",
    [req.params.id],
    (err, result) => res.json(result[0])
  );
};

export const getProductByCategory = (req, res) => {
  db.query(
    "SELECT * FROM products WHERE category_id=?",
    [req.params.id],
    (err, result) => res.json(result)
  );
};

export const createProduct = (req, res) => {
  const { category_id, product_name, price, stock, image, description } = req.body;
  db.query(
    "INSERT INTO products VALUES (NULL,?,?,?,?,?,?)",
    [category_id, product_name, price, stock, image, description],
    () => res.json({ message: "Produk berhasil ditambahkan" })
  );
};

export const updateProduct = (req, res) => {
  db.query(
    "UPDATE products SET product_name=?, price=?, stock=?, image=?, description=? WHERE product_id=?",
    [req.body.product_name, req.body.price, req.body.stock, req.body.image, req.body.description, req.params.id],
    () => res.json({ message: "Produk berhasil diupdate" })
  );
};

export const deleteProduct = (req, res) => {
  db.query(
    "DELETE FROM products WHERE product_id=?",
    [req.params.id],
    () => res.json({ message: "Produk berhasil dihapus" })
  );
};
