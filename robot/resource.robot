*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         35.228.20.146
${BROWSER}        googlechrome
${DELAY}          0
${VALID USER}     demo
${VALID PASSWORD}    mode
${LOGIN URL}      http://${SERVER}/
${WELCOME URL}    http://${SERVER}/welcome.html
${ERROR URL}      http://${SERVER}/error.html

*** Keywords ***
Open Browser To Home Page
    Set Selenium Timeout   5
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Set Selenium Speed    ${DELAY}
    Home Page Should Be Open

Home Page Should Be Open
    Title Should Be    Home - CodeThis.Online

Click To Info Page
    Click Element    xpath=(//a[text()='Info'])	
    Info Page Should Be Open

Info Page Should Be Open
    Title Should Be    Info - CodeThis.Online

Click To Contact Page
    Click Element    xpath=(//a[text()='Contact'])	
    Contact Page Should Be Open

Contact Page Should Be Open
    Title Should Be    Contact - CodeThis.Online

Click To Home Page
    Click Element    xpath=(//a[text()='Home'])
    Home Page Should Be Open

Click To Add User
    Click Button     name=Admin
    Mouse Over       class=dropdown
    Mouse Over       class=dropdown
    Click Element    xpath=(//a[text()='Add User']) 


Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    username_field    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password_field    ${password}

Submit Credentials
    Click Button    login_button

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    Welcome Page


***   Maximize Browser Window ***
