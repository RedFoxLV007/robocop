*** Settings ***
Library    Selenium2Library


*** Keywords ***
Калькулятор расхода топлива
    [Arguments]    ${Средний расход топлива}    ${Расстояние}    ${Цена за литр}

    Open browser    https://calcus.ru/kalkulyator-rashoda-topliva
    Input text    name:average_consumption     ${Средний расход топлива}
    Input text    name:distance     ${Расстояние}
    Input text    name:cost     ${Цена за литр}
    Click button    xpath:/html/body/div[2]/div[2]/div[1]/form/div[15]/div/input

    Sleep    2 second
    Close browser

*** Test Cases ***
Проверка основной функции:
    Калькулятор расхода топлива    12   340    60
Проверка(отрицательная) приема нулевых значений:
    Калькулятор расхода топлива    0   340    60
Проверка(отрицательная) приема отрицательных значений:
    Калькулятор расхода топлива    -1   340    60
Проверка(отрицательная) приема буквенных значений:
    Калькулятор расхода топлива    abc   340    60

