import express from "express";
import {
  mostBoughtProduct,
  topCustomerOrder,
  topCustomerNominal,
  topItemCustomer,
  top10Products,
  monthlyProfitProduct,
  monthlySalesProduct,
  monthlyOrderCustomer,
  monthlyNominalCustomer,
  layananBulananKasir
} from "../controllers/databaseController.js";

const router = express.Router();

router.get("/produk-terbanyak", mostBoughtProduct);
router.get("/customer-order-terbanyak", topCustomerOrder);
router.get("/customer-nominal-terbesar", topCustomerNominal);
router.get("/customer-item-terbanyak", topItemCustomer);
router.get("/top10-produk", top10Products);
router.get("/profit-bulanan-produk", monthlyProfitProduct);
router.get("/penjualan-bulanan-produk", monthlySalesProduct);
router.get("/order-bulanan-customer", monthlyOrderCustomer);
router.get("/nominal-bulanan-customer", monthlyNominalCustomer);
router.get("/layanan-bulanan-kasir", layananBulananKasir);

export default router;
