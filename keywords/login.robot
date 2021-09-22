*** Settings ***
Resource    ../resources/import.robot
Resource    ../elements/element_login.robot
*** Keywords ***
Login NCS
    Open Browser    ${ncs_base_url}    chrome