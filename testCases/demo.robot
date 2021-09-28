*** Settings ***
Library    Selenium2Library
Suite Teardown    Close All Browsers
*** Variable ***
${robot_url}=        https://robotframework.org/
*** Keywords ***
KEYWORD OPENT BROWSER
    Open Browser        ${robot_url}        chrome
    Maximize Browser Window
    Sleep    2s
    Wait Until Element Is Enabled        xpath://section/nav/li/a
    Element Text Should Be               xpath://section/nav/li/a        INTRODUCTION
    Click Element                        xpath://section/nav/li/a
    Sleep    3s
*** Test Case ***
TC1 Robot Framework
    KEYWORD OPENT BROWSER

# //tbody/tr/td/div/span[@aria-hidden="true"]