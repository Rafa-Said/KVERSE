var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/ultimas", function (req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});
router.post("/publicar", function (req, res) {
    medidaController.publicar(req, res); /* Tentando chamar as informações para o gráficos */
});

/* router.get("/tempo-real/:idAquario", function (req, res) {
    medidaController.buscarMedidasEmTempoReal(req, res);
})  */

module.exports = router;