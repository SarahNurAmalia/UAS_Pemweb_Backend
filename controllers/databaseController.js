import db from "../config/db.js";

// 1. Produk paling banyak dibeli tahun sebelumnya

export const mostBoughtProduct = async (req, res) => {
  const [rows] = await db.query(`
    SELECT p.PRODUCT_NAME, t.total_qty
    FROM products p
    JOIN (
      SELECT od.PRODUCT_ID, SUM(od.QTY) total_qty
      FROM order_details od
      JOIN orders o ON o.ORDER_ID = od.ORDER_ID
      WHERE YEAR(o.ORDER_DATE) = YEAR(CURDATE()) - 1
      GROUP BY od.PRODUCT_ID
      ORDER BY total_qty DESC
      LIMIT 1
    ) t ON p.PRODUCT_ID = t.PRODUCT_ID
  `);
  res.json(rows);
};

// 2. Customer paling banyak order
export const topCustomerOrder = async (req, res) => {
  const [rows] = await db.query(`
    SELECT c.CUST_NAME, t.total_order
    FROM customers c
    JOIN (
      SELECT CUST_ID, COUNT(*) total_order
      FROM orders
      WHERE YEAR(ORDER_DATE) = YEAR(CURDATE()) - 1
      GROUP BY CUST_ID
    ) t ON c.CUST_ID = t.CUST_ID
    ORDER BY t.total_order DESC
  `);
  res.json(rows);
};

// 3. Customer dengan nilai order terbesar
export const topCustomerNominal = async (req, res) => {
  const [rows] = await db.query(`
    SELECT c.CUST_NAME, t.total_nominal
    FROM customers c
    JOIN (
      SELECT CUST_ID, SUM(TOTAL) total_nominal
      FROM orders
      WHERE YEAR(ORDER_DATE) = YEAR(CURDATE()) - 1
      GROUP BY CUST_ID
    ) t ON c.CUST_ID = t.CUST_ID
    ORDER BY t.total_nominal DESC
  `);
  res.json(rows);
};

// 4. Customer dengan jumlah item terbanyak
export const topItemCustomer = async (req, res) => {
  const [rows] = await db.query(`
    SELECT c.CUST_NAME, t.total_item
    FROM customers c
    JOIN (
      SELECT o.CUST_ID, SUM(od.QTY) total_item
      FROM order_details od
      JOIN orders o ON o.ORDER_ID = od.ORDER_ID
      WHERE YEAR(o.ORDER_DATE) = YEAR(CURDATE()) - 1
      GROUP BY o.CUST_ID
    ) t ON c.CUST_ID = t.CUST_ID
    ORDER BY t.total_item DESC
  `);
  res.json(rows);
};

// 5. 10 produk terlaris
export const top10Products = async (req, res) => {
  const [rows] = await db.query(`
    SELECT p.PRODUCT_NAME, t.total_qty
    FROM products p
    JOIN (
      SELECT PRODUCT_ID, SUM(QTY) total_qty
      FROM order_details
      GROUP BY PRODUCT_ID
    ) t ON p.PRODUCT_ID = t.PRODUCT_ID
    ORDER BY t.total_qty DESC
    LIMIT 10
  `);
  res.json(rows);
};

// 6. Profit penjualan bulanan per produk
export const monthlyProfitProduct = async (req, res) => {
  const [rows] = await db.query(`
    SELECT p.PRODUCT_NAME, MONTH(o.ORDER_DATE) bulan,
           SUM(od.QTY * od.PRICE) profit
    FROM order_details od
    JOIN orders o ON o.ORDER_ID = od.ORDER_ID
    JOIN products p ON p.PRODUCT_ID = od.PRODUCT_ID
    WHERE YEAR(o.ORDER_DATE) = YEAR(CURDATE()) - 1
    GROUP BY p.PRODUCT_ID, bulan
  `);
  res.json(rows);
};

// 7. Jumlah penjualan bulanan per produk
export const monthlySalesProduct = async (req, res) => {
  const [rows] = await db.query(`
    SELECT p.PRODUCT_NAME, MONTH(o.ORDER_DATE) bulan,
           SUM(od.QTY) total_jual
    FROM order_details od
    JOIN orders o ON o.ORDER_ID = od.ORDER_ID
    JOIN products p ON p.PRODUCT_ID = od.PRODUCT_ID
    WHERE YEAR(o.ORDER_DATE) = YEAR(CURDATE()) - 1
    GROUP BY p.PRODUCT_ID, bulan
  `);
  res.json(rows);
};

// 8. Jumlah order bulanan per customer
export const monthlyOrderCustomer = async (req, res) => {
  const [rows] = await db.query(`
    SELECT c.CUST_NAME, MONTH(o.ORDER_DATE) bulan,
           COUNT(*) total_order
    FROM orders o
    JOIN customers c ON c.CUST_ID = o.CUST_ID
    WHERE YEAR(o.ORDER_DATE) = YEAR(CURDATE()) - 1
    GROUP BY c.CUST_ID, bulan
  `);
  res.json(rows);
};

// 9. Total nominal order bulanan per customer
export const monthlyNominalCustomer = async (req, res) => {
  const [rows] = await db.query(`
    SELECT c.CUST_NAME, MONTH(o.ORDER_DATE) bulan,
           SUM(o.TOTAL) total_nominal
    FROM orders o
    JOIN customers c ON c.CUST_ID = o.CUST_ID
    WHERE YEAR(o.ORDER_DATE) = YEAR(CURDATE()) - 1
    GROUP BY c.CUST_ID, bulan
  `);
  res.json(rows);
};

