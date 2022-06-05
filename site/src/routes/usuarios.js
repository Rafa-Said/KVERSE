var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.entrar(req, res);
});

router.post("/publicar", function (req, res) {
    usuarioController.publicar(req, res);
}); /* Postando as informações que o usuário realizou no mural */

router.get("/pesquisar/:descricao", function (req, res) {
    usuarioController.pesquisarDescricao(req, res);
}); /* Chamando a descrção feita pelo usuario em mural */

module.exports = router;