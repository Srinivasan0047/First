*** Settings ***
Library  Selenium2Library

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://evue-qa.evolutiondigital.com/ams/
${LOGIN_USERNAME} =  admin
${LOGIN_PASSWORD} =  A@dm!n$50
${LOGIN_SUBMIT} =  xpath=//*[@id="submit"]
${BROWSER_MAXIMIZE} =  Maximize Browser Window
${Logout} =  xpath=//*[@id="header"]/div/div[4]/ul/li[2]/a


*** Test Cases ***
To Verify Manage Operators
    [Tags]  Smoke
    Open Browser  https://www.spicejet.com/  chrome
    Maximize Browser Window
    Select From List By Value  id=ctl00_mainContent_ddl_originStation1  MAA
    Select From List By Value  id=ctl00_mainContent_ddl_destinationStation1  GOI

*** Keywords ***
Login
    Open Browser  ${START_URL}  ${BROWSER}
    Input Text  id=username  ${LOGIN_USERNAME}
    Input Text  id=password  ${LOGIN_PASSWORD}
    Click Button  ${LOGIN_SUBMIT}

End
    Close browser