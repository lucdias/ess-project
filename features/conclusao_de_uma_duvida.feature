Feature: Conclusão de uma dúvida

    As a Professor
    I want to concluir uma dúvida já aberta no sistema
    So that a dúvida seja registrada como dúvida concluída

Scenario: Concluindo uma dúvida
	Given Estou logado no sistema como professor 
    And estou em uma thread de uma dúvida
    When Concluo a dúvida
    Then Uma mensagem de dúvida concluída aparece
    And Sou direcionado para o quadro com as dúvidas não concluídas
    And Uma mensagem é enviada para o aluno responsável pela dúvida avisando da sua conclusão. 

Scenario: Alerta de baixa interação com uma dúvida
    Given Há uma dúvida no sistema sem interação há 6 dias
    When O sétimo dia se encerra
    Then Um alerta é enviado para o professor sobre a possibilidade de conclusão da dúvida

