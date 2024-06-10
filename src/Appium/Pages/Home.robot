*** Settings ***
Library    AppiumLibrary
Resource    ../Components/Click_Element.robot
Resource    ../Resources/Home.robot

*** Keywords ***
Dado que o usuário esteja na home
    Wait Until Element Is Visible    ${ENTER_HOME_BUTTON}

E clique em ENTRAR
    Clicar no elemento    ${ENTER_HOME_BUTTON}
Então uma mensagem de sucesso será exibida
    Wait Until Page Contains    Seu login foi enviado para o email