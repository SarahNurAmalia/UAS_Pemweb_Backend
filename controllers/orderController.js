import db from "../config/db.js";

/* ======================
   GET ALL ORDERS
====================== */
export const getOrders = async (req, res) => {
  try {
    const [rows] = await db.query(`
      SELECT 
        o.ORDER_ID,
        o.ORDER_DATE,
        o.CUST_ID,
        o.USER_ID,
        o.TOTAL,
        o.METHOD_ID,
        o.BANK_TRANS,
        o.RECEIPT_NUMBER
      FROM orders o
      ORDER BY o.ORDER_DATE DESC
    `);

    res.json(rows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

/* ======================
   GET ORDER BY ID
====================== */
export const getOrderById = async (req, res) => {
  try {
    const { id } = req.params;

    const [rows] = await db.query(
      "SELECT * FROM orders WHERE ORDER_ID = ?",
      [id]
    );

    res.json(rows[0]);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

/* ======================
   CREATE ORDER
====================== */
export const createOrder = async (req, res) => {
  try {
    const {
      CUST_ID,
      USER_ID,
      TOTAL,
      METHOD_ID,
      BANK_TRANS,
      RECEIPT_NUMBER
    } = req.body;

    const sql = `
      INSERT INTO orders 
      (ORDER_DATE, CUST_ID, USER_ID, TOTAL, METHOD_ID, BANK_TRANS, RECEIPT_NUMBER)
      VALUES (NOW(), ?, ?, ?, ?, ?, ?)
    `;

    const [result] = await db.query(sql, [
      CUST_ID || null,
      USER_ID,
      TOTAL,
      METHOD_ID || 1,
      BANK_TRANS || null,
      RECEIPT_NUMBER || null
    ]);

    res.json({
      message: "Order berhasil ditambahkan",
      ORDER_ID: result.insertId
    });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

/* ======================
   DELETE ORDER
====================== */
export const deleteOrder = async (req, res) => {
  try {
    const { id } = req.params;

    await db.query("DELETE FROM orders WHERE ORDER_ID = ?", [id]);

    res.json({ message: "Order berhasil dihapus" });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};
