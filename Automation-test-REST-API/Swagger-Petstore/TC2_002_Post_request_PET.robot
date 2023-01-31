*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary


*** Variables ***
${API_Base_Endpoint}    http://localhost:8080/

*** Test Cases ***
TC_Return_all_the_video_games_POST
    Create Session    API_Testing    ${API_Base_Endpoint}
    ${body}=    Create Dictionary    id=99    name=Spider-Man    releaseDate=2023-01-29T01:01:12.936Z    reviewScore=0    category=string    rating=string
    ${body}  Evaluate  json.dumps(${body})  json
    ${header}=    Create Dictionary    Content-Type=application/json
    Log To Console    ${header}
    Log To Console    ${body}
    ${response}=    POST On Session    API_Testing    /app/videogames    data=${body}    headers=${header}
    Log To Console    ${response}
    Log to Console    ${response.status_code}
    Log To Console    ${response.content}
    #validation
    ${statusCode}=    Convert To String    ${response.status_code}
    Should Be Equal    ${statusCode}    200
    ${res_body}=    Convert To String    ${response.content}
    Should Contain    ${res_body}    Record Added Successfully