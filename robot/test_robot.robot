*** Settings ***
Library     Selenium2Library
*** Test Cases ***
Тест на сайте Яндекс
	Open Browser    https://www.ya.ru  googlechrome  # headlesschrome- без отоброжения хрома
   	Maximize Browser Window
   	Close Browser


#===================================Переменные============================================================#
#===================================Переменные============================================================#
#===================================Переменные============================================================#


*** Variables ***
${username}    robot_user  # username переменная содержит данные 'robot_user'
${password}    Test@123   # password переменная содержит данные 'Test@123'

*** Test Cases ***
Login Test
    [Documentation]    This test case demonstrates the usage of variables
    [Tags]    login
    Open Browser    http://www.example.com    Chrome
    Input Text    username_field    ${username}
    Input Text    password_field    ${password}
    Click Button    login_button
    Page Should Contain    Welcome, ${username}
    Close Browser

#===================================KEYWORLD===========================================================#
#=======================================KEYWORLD========================================================#
#========================================KEYWORLD=======================================================#
*** Test Cases ***
Example Test
    Open Browser    http://www.example.com    Chrome
    Login    username    password
    Search Product    Robot Framework
    Add Product To Cart    product_id
    Check Cart    expected_items
    Close Browser

*** Keywords ***
Login                                           # функция
    [Arguments]    ${username}    ${password}
    Input Text    username_field    ${username}
    Input Text    password_field    ${password}
    Click Button    login_button

Search Product
    [Arguments]    ${product_name}
    Input Text    search_box    ${product_name}
    Click Button    search_button

Add Product To Cart
    [Arguments]    ${product_id}
    Click Element    ${product_id}
    Click Button    add_to_cart_button

Check Cart
    [Arguments]    ${expected_items}
    ${actual_items}=    Get Cart Items
    Should Be Equal    ${actual_items}    ${expected_items}

Get Cart Items
    # Реализация получения списка товаров в корзине
    # https://autotests-pytest.gitbook.io/robot-framework/osnovnye-komandy-v-seleniumlibrary ===== основные команды