*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary


*** Variables ***
${API_Base_Endpoint}    http://localhost:8080/

*** Test Cases ***
TC3_Get_request_VideoGames_single_video_Game
    Create Session    API_Testing    ${API_Base_Endpoint}
    ${Get_Response}=    GET On Session   API_Testing    /app/videogames/102
    ${statusCode}=    Convert To String    ${Get_Response.status_code}
    Log To Console    ${Get_Response.status_code}
    ${res_body}=    Convert To String    ${Get_Response.content}
	Log To Console    ${res_body}
    #validation
    ${statusCode}=    Convert To String    ${Get_Response.status_code}
    Should Be Equal    ${statusCode}    200