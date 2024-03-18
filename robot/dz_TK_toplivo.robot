*** Settings ***
Documentation   Fuel Consumption Calculator
Library    SeleniumLibrary

*** Test Cases ***
Калькулятор расхода топлива
    Open browser    https://calcus.ru/kalkulyator-rashoda-topliva
    Input text    xpath:/html/body/div[2]/div[2]/div[1]/form/div[5]/div[2]/div[1]/input      10
    Input text    xpath:/html/body/div[2]/div[2]/div[1]/form/div[8]/div[2]/div[1]/input     340
    Input text    xpath:/html/body/div[2]/div[2]/div[1]/form/div[9]/div[2]/div/input     64.98
    Click button    xpath:/html/body/div[2]/div[2]/div[1]/form/div[15]/div/input
    Sleep    2 second
    Capture Page Screenshot
    Close browser
