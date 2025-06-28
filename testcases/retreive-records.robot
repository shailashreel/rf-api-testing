*** Settings ***
Resource    base-test.robot

*** Test Cases ***
Demo of GET Request
    [Documentation]    This is test demo for GET Request in API
    [Tags]    Smoke    GET
    Create Session With Auth and No Other Headers    GET_API
    ${response}    GET On Session    GET_API    /posts
    Log    ${response.content}
    Should Be Equal As Strings    ${response.status_code}    200

    