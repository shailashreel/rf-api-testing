*** Settings ***
#To use HTTP API testing functionalities we need RequestsLibrary library of robotframework
Library    RequestsLibrary
#To use Keywords/functions handling Python Lists and Dictionaries we need Collections library of robotframework
Library    Collections 
Resource    ../configs/app-variables.robot
Resource    ../configs/env-variables.robot

*** Keywords ***
Create Session With Auth and No Other Headers    [Arguments]    ${session_name}
    ${headers}    Create Dictionary    Content-Type=application/json  ${auth_header_name}=${auth_header_value}  
    Create Session    ${session_name}    ${base_url}    headers=${headers}    verify=true


*** Comments ***
Create Session With Authentication And No Other Headers    [Arguments]    ${session_name}
    ${headers}    Create Dictionary    Content-Type=application/json    ${AUTH_HEADER_NAME}=${AUTH_HEADER_VALUE}
    Create Session    ${session_name}    ${BASE_URL}    headers=${headers}    verify=true

Create Session With Authentication And One Header    [Arguments]    ${session_name}    ${header_name}    ${header_value}
    ${headers}    Create Dictionary    Content-Type=application/json    ${AUTH_HEADER_NAME}=${AUTH_HEADER_VALUE}    ${header_name}=${header_value}
    Create Session    ${session_name}    ${BASE_URL}    headers=${headers}    verify=true

Create Session With Authentication And Two Headers    [Arguments]    ${session_name}    ${first_header_name}    ${first_header_value}    ${second_header_name}    ${second_header_value}
    ${headers}    Create Dictionary    Content-Type=application/json    ${AUTH_HEADER_NAME}=${AUTH_HEADER_VALUE}    ${first_header_name}=${first_header_value}    ${second_header_name}=${second_header_value}
    Create Session    ${session_name}    ${BASE_URL}    headers=${headers}    verify=true