*** Settings ***
Library    SeleniumLibrary    

Default Tags         sanity

*** Test Cases ***
MyHelloWork
    Log    Hello World..
    
FirstSeleniumTest
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    5
    Input Text    name=q            Automation step
    Click Button    name=btnK
    
    Sleep    2
    Close Browser
    Log    Test Complete

SampleLoginTest
    Open Browser    ${URL}    chrome
    Set Browser Implicit Wait    5
    LoginKW
    Click Element         id=welcome
    Click Element         link=Logout
    Close Browser
    Log                   Test completed
    Log                   This was on env %{OS}

*** Variables ***

${URL}        https://opensource-demo.orangehrmlive.com/
@{CRED}       Admin    admin123

    
*** Keywords ***

LoginKW
    Input Text            id=txtUsername            ${CRED}[0]
    Input Password        id=txtPassword            admin123
    Click Button          id=btnLogin
    