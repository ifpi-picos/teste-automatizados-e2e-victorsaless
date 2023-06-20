 Feature: Acessar um recurso apresentado como resultado de uma pesquisa

  Scenario: Pesquisa de um recurso que existe no banco de dados e posteriormente o seu acesso

            Given o sistema possui vários recursos cadastrados
            When eu realizar uma pesquisa por um termo que esteja presente no título de pelo menos um recurso
            Then o sistema deve exibir o(s) recurso(s) correspondentes
            And quando eu clicar no botão "ACESSAR"
            Then serei redirecionado para o recurso
            And serei capaz de visualizar as informações detalhadas do recurso, como descrição, autor, data de publicação, etc.

