*** Settings ***
Library     RequestsLibrary
Library     Collections

*** Test Cases ***
Example GET Request
    [Documentation]    This is a sample for GET request automation
    [Tags]    Smoke    GET

    ${response}=    GET  https://jsonplaceholder.typicode.com/todos/1
    Should Be Equal As Strings    1  ${response.json()}[id]
