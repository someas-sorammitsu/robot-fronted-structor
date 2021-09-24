*** Settings ***
Resource    ../resources/import.robot
Resource    ../elements/element_login.robot
*** Keywords ***
Login NCS
    Open Browser    ${ncs_base_url}    chrome
    Wait Until Element Is Visible      ${text_welcome}
    Element Text Should Be             ${text_welcome}        Welcome
    Element Text Should Be             xpath://div[@class="text-h5"]        Check Clearing System
    Input Text                         xpath://input[@name="username"]      nbc-admin-samak
    Input Password                     xpath://input[@name="password"]      aA12345@ddd  
    # Click Button                       xpath://button[@type="submit"]
    Press Keys                         xpath://input[@name="password"]        ENTER            
    Sleep    3s