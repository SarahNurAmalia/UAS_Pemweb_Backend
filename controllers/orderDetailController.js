import db from "../config/db.js";

/* ==========================
   GET ORDER DETAILS
========================== */
export const getOrderDetails = async (req, res) => {
  try {
    const { orderId } = req.params;

    const [rows] = await db.query(`
      SELECT 
        od.ORDER_ID,
        od.PRODUCT_ID,
        p.PRODUCT_NAME,
        od.QTY,
        od.PRICE,
        (od.QTY * od.PRICE) AS SUBTOTAL
      FROM order_details od
      JOIN products p ON od.PRODUCT_ID = p.PRODUCT_ID
      WHERE od.ORDER_ID = ?
    `, [orderId]);

    res.json(rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

/* ==========================
   CREATE ORDER DETAIL
========================== */
export const createOrderDetail = async (req, res) => {
  try {
    const { ORDER_ID, PRODUCT_ID, QTY, PRICE } = req.body;

    const sql = `
      INSERT INTO order_details
      (QTY, PRICE, ORDER_ID, PRODUCT_ID)
      VALUES (?, ?, ?, ?)
    `;

    await db.query(sql, [
      QTY || 1,
      PRICE,
      ORDER_ID,
      PRODUCT_ID
    ]);

    res.json({ message: "Order detail berhasil ditambahkan" });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

/* ==========================
   UPDATE ORDER DETAIL
========================== */
export const updateOrderDetail = async (req, res) => {
  try {
    const { orderId, productId } = req.params;
    const { QTY, PRICE } = req.body;

    const sql = `
      UPDATE order_details
      SET QTY = ?, PRICE = ?
      WHERE ORDER_ID = ? AND PRODUCT_ID = ?
    `;

    await db.query(sql, [
      QTY,
      PRICE,
      orderId,
      productId
    ]);

    res.json({ message: "Order detail berhasil diupdate" });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

/* ==========================
   DELETE ORDER DETAIL
========================== */
export const deleteOrderDetail = async (req, res) => {
  try {
    const { orderId, productId } = req.params;

    await db.query(
      "DELETE FROM order_details WHERE ORDER_ID = ? AND PRODUCT_ID = ?",
      [orderId, productId]
    );

    res.json({ message: "Order detail berhasil dihapus" });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
