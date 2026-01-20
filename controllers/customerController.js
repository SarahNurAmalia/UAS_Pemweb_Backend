import db from "../config/db.js";

/* =======================
   GET ALL CUSTOMERS
======================= */
export const getCustomers = async (req, res) => {
  try {
    const [rows] = await db.query("SELECT * FROM customers");
    res.json(rows);
  } catch (err) {
    res.status(500).json(err);
  }
};

/* =======================
   GET CUSTOMER BY ID
======================= */
export const getCustomerById = async (req, res) => {
  try {
    const { id } = req.params;
    const [rows] = await db.query(
      "SELECT * FROM customers WHERE CUST_ID = ?",
      [id]
    );
    res.json(rows[0]);
  } catch (err) {
    res.status(500).json(err);
  }
};

/* =======================
   CREATE CUSTOMER
======================= */
export const createCustomer = async (req, res) => {
  try {
    const {
      CUST_ID,
      CUST_NAME,
      ADDRESS,
      PLACE_OF_BIRTH,
      DATE_OF_BIRTH,
      CONTACT_NUMBER,
      EMAIL,
      GENDER_ID
    } = req.body;

    const sql = `
      INSERT INTO customers
      (CUST_ID, CUST_NAME, ADDRESS, PLACE_OF_BIRTH, DATE_OF_BIRTH,
       CONTACT_NUMBER, EMAIL, GENDER_ID, CREATED_AT, CREATED_BY)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, CURDATE(), 'SYSTEM')
    `;

    await db.query(sql, [
      CUST_ID,
      CUST_NAME,
      ADDRESS,
      PLACE_OF_BIRTH,
      DATE_OF_BIRTH,
      CONTACT_NUMBER,
      EMAIL,
      GENDER_ID
    ]);

    res.json({ message: "Customer berhasil ditambahkan" });
  } catch (err) {
    res.status(500).json(err);
  }
};

/* =======================
   UPDATE CUSTOMER
======================= */
export const updateCustomer = async (req, res) => {
  try {
    const { id } = req.params;
    const {
      CUST_NAME,
      ADDRESS,
      CONTACT_NUMBER,
      EMAIL
    } = req.body;

    const sql = `
      UPDATE customers
      SET CUST_NAME = ?, ADDRESS = ?, CONTACT_NUMBER = ?, EMAIL = ?,
          UPDATED_AT = CURDATE(), UPDATED_BY = 'SYSTEM'
      WHERE CUST_ID = ?
    `;

    await db.query(sql, [
      CUST_NAME,
      ADDRESS,
      CONTACT_NUMBER,
      EMAIL,
      id
    ]);

    res.json({ message: "Customer berhasil diupdate" });
  } catch (err) {
    res.status(500).json(err);
  }
};

/* =======================
   DELETE CUSTOMER
======================= */
export const deleteCustomer = async (req, res) => {
  try {
    const { id } = req.params;

    await db.query("DELETE FROM customers WHERE CUST_ID = ?", [id]);

    res.json({ message: "Customer berhasil dihapus" });
  } catch (err) {
    res.status(500).json(err);
  }
};
