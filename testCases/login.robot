*** Settings ***
Resource    ../keywords/login.robot 
Suite Teardown  Close All Browsers
*** Test Cases ***
TC1 Login System
    Login NCS