*** Settings ***
Documentation    Gerenciamento de casos de teste 
Resource    ../TestCases/Forgot_Login.robot
Resource    ../Config/Config.robot

Test Setup    Iniciar aplicativo    #executa antes de cada CT
Test Teardown    Fechar aplicativo    #executa depois de cada CT

*** Test Cases ***
Recuperar login 
    CT: Recuperar login com sucesso