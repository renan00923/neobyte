<?php
// Definição de rotas simples para a aplicação e-commerce

// Exemplo de rotas
$routes = [
    '/' => 'HomeController@index',
    '/produtos' => 'ProdutoController@listar',
    // Adicionar mais rotas conforme necessário
];

// Função para rotear
function route($uri) {
    global $routes;
    if (isset($routes[$uri])) {
        // Aqui você pode instanciar o controller e chamar o método
        echo "Rota encontrada: " . $routes[$uri];
    } else {
        echo "Página não encontrada";
    }
}

// Obter a URI atual
$uri = $_SERVER['REQUEST_URI'];
route($uri);
?>