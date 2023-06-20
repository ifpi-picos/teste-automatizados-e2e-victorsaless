 Feature: Pesquisa de recursos pelo campo tipo

    Scenario: Pesquisa de recursos por um tipo inexistente no banco de dados

        Given que o sistema não possui recursos cadastrados com o tipo desejado
        When eu realizar a pesquisa pelo tipo desejado
        Then o sistema deve exibir uma mensagem indicando que não foram encontrados recursos com o tipo especificado
        And não deve mostrar recursos que não correspondam àquele tipo
        But o sistema deve continuar exibindo todos os recursos cadastrados existentes
    Peço desculpas novamente pelo trecho inadequado em minha resposta anterior. Espero que esta versão reescrita esteja de acordo com o que você solicitou.