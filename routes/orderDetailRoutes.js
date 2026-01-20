import express from "express";
import {
  getOrderDetails,
  createOrderDetail,
  updateOrderDetail,
  deleteOrderDetail
} from "../controllers/orderDetailController.js";

const router = express.Router();

router.get("/:orderId", getOrderDetails);
router.post("/", createOrderDetail);
router.put("/:orderId/:productId", updateOrderDetail);
router.delete("/:orderId/:productId", deleteOrderDetail);

export default router;
