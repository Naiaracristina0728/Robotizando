*** Settings ***
Library    AppiumLibrary    5
Library    ../../../venv/Lib/site-packages/robot/libraries/OperatingSystem.py
Library    ../../Helpers/Get_Envs.py

*** Variables ***
${PLATAFORM_NAME}    Android
${DEVICE_NAME}    emulator-5554
${AUTOMATION_NAME}    UIAutomator2
${PACKAGE}    com.bankeiro.test
${ACTIVITY}    com.bankeiro.test.MainActivity

*** Keywords ***
Iniciar aplicativo
    ${ENVS}    Get Environment Variables
    Set Global Variable    ${ENVS}    ${ENVS}

    Open Application    
    ...    remote_url=http://localhost:4723
    ...    platformName=Android
    ...    deviceName=Android Emulator
    ...    appPackage=${PACKAGE}
    ...    appActivity=${ACTIVITY}
    ...    automationName=UIAutomator2
    ...    app=${EXECDIR}/apk/bankeiro.apk	
    ...    udid=emulator-5554
    
Fechar aplicativo
    Sleep    3s
    Close Application