import db from "../config/db.js";

export const getCustomers = (req, res) => {
  db.query("SELECT * FROM customer", (err, result) => res.json(result));
};

export const createCustomer = (req, res) => {
  const { customer_name, email, phone, address } = req.body;
  db.query(
    "INSERT INTO customer VALUES (NULL,?,?,?,?)",
    [customer_name, email, phone, address],
    () => res.json({ message: "Customer ditambahkan" })
  );
};
