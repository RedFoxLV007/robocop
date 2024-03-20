*** Settings ***
Documentation   Fuel Consumption Calculator
Library    Selenium2Library


*** Test Cases ***
Калькулятор расчета обоев стандарт
    Open browser    https://oboi-elysium.ru/calculator/
    Input text    xpath://*[@id="rlength"]      22
    Input text    xpath://*[@id="width"]     3
    Input text    xpath://*[@id="height"]     1.5
    Click button    xpath://*[@id="submit"]
    Sleep    3 second
    Close browser


*** Test Cases ***
Калькулятор расчета обоев c подбором
    Open browser    https://oboi-elysium.ru/calculator/
    Input text    xpath://*[@id="rlength"]      22
    Input text    xpath://*[@id="width"]     3
    Input text    xpath://*[@id="height"]     1.5
    Click Element    xpath://*[@id="container-inner"]/div[5]/table/tbody/tr/td[2]/div[3]/noindex/div/form/table/tbody/tr[6]/td[2]/label
    Click button    xpath://*[@id="submit"]
    Sleep    3 second
    Close browser



*** Test Cases ***
Калькулятор расчета обоев с изминением ширины рулона
    Open browser    https://oboi-elysium.ru/calculator/
    Input text    xpath://*[@id="rlength"]      22
    Input text    xpath://*[@id="width"]     3
    Input text    xpath://*[@id="height"]     1.5
    Click Element    xpath://*[@id="container-inner"]/div[5]/table/tbody/tr/td[2]/div[3]/noindex/div/form/table/tbody/tr[4]/td[2]/div[2]/label
    Click Element    xpath://*[@id="container-inner"]/div[5]/table/tbody/tr/td[2]/div[3]/noindex/div/form/table/tbody/tr[6]/td[2]/label
    Click button    xpath://*[@id="submit"]
    Sleep    3 second
    Close browser

*** Test Cases ***
Калькулятор расчета обоев с изминением длинны рулона
    Open browser    https://oboi-elysium.ru/calculator/
    Input text    xpath://*[@id="rlength"]      22
    Input text    xpath://*[@id="width"]     3
    Input text    xpath://*[@id="height"]     1.5
    Click Element    xpath://*[@id="container-inner"]/div[5]/table/tbody/tr/td[2]/div[3]/noindex/div/form/table/tbody/tr[5]/td[2]/div[2]/label
    Click Element    xpath://*[@id="container-inner"]/div[5]/table/tbody/tr/td[2]/div[3]/noindex/div/form/table/tbody/tr[5]/td[2]/div[2]/label
    Click button    xpath://*[@id="submit"]
    Sleep    3 second
    Close browser

    
*** Test Cases ***
Калькулятор расчета обоев (отрицательный) без длинны
    Open browser    https://oboi-elysium.ru/calculator/
    #Input text    xpath://*[@id="rlength"]    22
    Input text    xpath://*[@id="width"]     3
    Input text    xpath://*[@id="height"]     1.5
    Click button    xpath://*[@id="submit"]

    Capture Page Screenshot   (отрицательный) без длинны.png
    Sleep    3 second
    Close browser

*** Test Cases ***
Калькулятор расчета обоев (отрицательный) без ширины
    Open browser    https://oboi-elysium.ru/calculator/
    Input text    xpath://*[@id="rlength"]    22
    #Input text    xpath://*[@id="width"]     3
    Input text    xpath://*[@id="height"]     1.5
    Click button    xpath://*[@id="submit"]
    Capture Page Screenshot   (отрицательный) без ширины.png
    Sleep    3 second
    Close browser

*** Test Cases ***
Калькулятор расчета обоев (отрицательный) без потолка
    Open browser    https://oboi-elysium.ru/calculator/
    Input text    xpath://*[@id="rlength"]    22
    Input text    xpath://*[@id="width"]     3
    #Input text    xpath://*[@id="height"]     1.5
    Click button    xpath://*[@id="submit"]
    Capture Page Screenshot   (отрицательный) без потолка.png
    Sleep    3 second
    Close browser