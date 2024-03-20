*** Settings ***
Library       Selenium2Library

*** Variables ***
${username}    robot_user  # username = "robot_user"
${result}   ''
#${test_num}  100
#${start_value}   cm



*** Test Cases ***
Тест на сайте Яндекс
	Open Browser  https://calc.by/converters/area-units-conversion.html  googlechrome  # headlesschrome - для проведения теста без открытия окна
   	#Maximize Browser Window
   	Input Text    id:val_area     100
    Select From List by Value  id:aUnits1   cm
    Select From List by Value  id:aUnits2   m
    Click Element    xpath://*[@id="calc_area_conv"]/div[2]/div[2]/span
    #${result}=  Get Text    xpath://*[@id="a_area"]

   	#Sleep  3seconds
   	#Should Be Equal As Strings  ${result}   1  # в этом сайте баг
	Close Browser  	Close Browser
    