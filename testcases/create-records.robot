*** Settings ***
Resource    base-test.robot

*** Test Cases ***
Demo of POST Request
    [Documentation]    This test demo for POST API Repuest
    [Tags]    Smoke    
    Create Session With Auth and No Other Headers    POST_API
    ${payload}    Create Dictionary    title="Robot Framework"    body="Robot Framework Demo"
    ${response}    POST On Session    POST_API    /posts    json=${payload}
    Log To Console    ${response.content}
    Should Be Equal As Strings    ${response.status_code}    201
    ${json_data}    Set Variable    ${response.json()}
    #${title_value}    Set Variable    ${json_data['title']}
    #Should Be Equal As Strings    ${title_value}    Robot Framework 
