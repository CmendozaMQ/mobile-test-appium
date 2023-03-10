*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary


*** Variables ***
${API_Base_Endpoint}    http://localhost:8080/

*** Test Cases ***
TC_DELETE_the_video_games
    Create Session    API_Testing    ${API_Base_Endpoint}
    ${response}=    DELETE On Session    API_Testing    /app/videogames/102
    Log To Console    ${response}
    Log to Console    ${response.status_code}
    Log To Console    ${response.content}
    #validation
    ${statusCode}=    Convert To String    ${response.status_code}
    Should Be Equal    ${statusCode}    200
    ${res_body}=    Convert To String    ${response.content}
    Should Contain    ${res_body}    Record Deleted Successfully