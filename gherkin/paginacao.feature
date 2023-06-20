 Feature: Paginação dos resultados de uma pesquisa

   Scenario: Pesquisa de uma palavra-chave contida em vários recursos e acesso à segunda página da lista de recursos correspondentes

        Given que o sistema possui vários recursos cadastrados relacionados à palavra-chave desejada
        When eu realizar a pesquisa pela palavra-chave desejada
        Then o sistema deve exibir o(s) recurso(s) correspondentes
        When eu clicar no botão da próxima página de exibição dos recursos
        Then o sistema deve exibir uma nova página com novos recursos
        Neste cenário, estamos considerando um sistema que permite aos usuários pesquisar recursos por meio de uma palavra-chave. Supomos que o sistema tenha vários recursos relacionados à palavra-chave desejada. Quando o usuário realiza a pesquisa, o sistema exibe os recursos correspondentes. Em seguida, o usuário decide navegar para a próxima página dos resultados clicando no botão apropriado. O sistema deve responder exibindo uma nova página com novos recursos, dando continuidade à listagem dos resultados de pesquisa.