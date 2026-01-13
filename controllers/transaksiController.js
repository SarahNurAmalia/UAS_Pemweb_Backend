import db from "../config/db.js";

export const getPenjualan = (req, res) => {
  db.query("SELECT * FROM penjualan", (err, result) => res.json(result));
};

export const createPenjualan = (req, res) => {
  const { customer_id, tanggal, total } = req.body;
  db.query(
    "INSERT INTO penjualan VALUES (NULL,?,?,?)",
    [customer_id, tanggal, total],
    () => res.json({ message: "Transaksi berhasil" })
  );
};
