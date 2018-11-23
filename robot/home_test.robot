*** Settings ***
Documentation     A test suite for home page testing.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Valid Home Page
    Open Browser To Home Page

Valid Info Page
    Click To Info Page

Valid Contact Page
    Click To Contact Page

Go Back to Home Page
    Click To Home Page

Admin Add User
    Click To Add User

***    Input Username    demo ***
***    Input Password    mode ***
***    Submit Credentials ***
***    Welcome Page Should Be Open ***

***    [Teardown]    Close Browser ***


