##-------------Параметризация ------------------#
*** Settings ***
Library       Selenium2Library

*** Keywords ***
Calculate
    [Arguments]    ${length}     ${width}     ${height}     ${result}
    Open Browser        https://oboi-elysium.ru/calculator/    Chrome

#-------------Вычисление фактического реузльтата------------------#
    Input Text    rlength    ${length}
    Input Text    width    ${width}
    Input Text    height    ${height}
    Click Button    submit
    ${result_field}    Get Text    results

#-----------------Проверка факт_рез == ожидаем_рез ?----------------#
    Should be Equal    ${result}    ${result_field}
    Close Browser


*** Test Cases ***
Положительные числа:
    Calculate    5    5    5    19

Ноль:
    Calculate    0    0    0    0

дополнительная проверка на ноль:
    Calculate    0    2    1    0

Дроби:
    Calculate    2,5    3,4    5,6    14

Отрицательные:
    Calculate    -8    7    7    ?

Пустые:
    Calculate    ${EMPTY}    ${EMPTY}    ${EMPTY}    ?

Не число:
    Calculate    One    Two    Three    ?


#-----------------------ПРИМЕР работы функции split----------------------------#
*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${text}    apple,banana,cherry,date

*** Test Cases ***
Example text
    ${fruits}=    Evaluate    "${text}".split(",")    modules=string    #text.split(', ') -> res = ['apple', ...]
    Log    ${fruits}



##--------------------ПРИМЕР разбивка на список списоков-------------------------------#
*** Settings ***
Library    SeleniumLibrary
Library    Collections   # для работы со списком


*** Variables ***
${multi_line_text}    Hello World>  # ->["Hello","World"]
...                      How are you?>
...                       I am fine thank you!>
# [["Hello","World"], []]

# "Hello World\nHow are you?\nI am fine thank you!".splitlines()-> lines =  ["Hello World", " How are you?", ...]

*** Test Cases ***
Example Test2
    ${lines}=    Evaluate    "${multi_line_text}".split('>')   modules=string
    ${words}=    Create List   # список как []
    FOR    ${line}    IN    @{lines}  # ${line} = "Hello World" (будет меняться)
        ${words_in_line}=    Evaluate    "${line}".split()    modules=string  # -> ["Hello","World"]
        Append To List    ${words}    ${words_in_line}  # [] добавляем ["Hello","World"]
    END
    Log Many    ${words} [["Hello","World"], []]