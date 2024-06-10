*** Settings ***
Resource    ../Components/Click_Element.robot
Resource    ../Components/Insert_Text.robot
Resource    ../Resources/Forgot_Login.robot

*** Keywords ***
Quando confirmar o cnpj corretamente
    Inserir texto    ${INPUT_CNPJ}   ${ENVS['CNPJ']}
    Clicar no elemento    ${RECUPERATION_BUTTON}