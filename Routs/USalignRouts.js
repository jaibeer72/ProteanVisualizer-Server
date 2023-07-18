const{compareTwoProteans, sayHello}=require("../Controllers/USalignContoller");

const router = require("express").Router();

router.get("/compareTwoProteans", compareTwoProteans);
router.get("/sayHello", sayHello);

module.exports = router; // Export the router