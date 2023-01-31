*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary


*** Variables ***
${API_Base_Endpoint}    https://petstore.swagger.io/v2

*** Test Cases ***
TC_Find_pet_by_ID
    Create Session    API_Testing    ${API_Base_Endpoint}
    ${Get_Response}=    GET On Session   API_Testing    /pet/100
    ${statusCode}=    Convert To String    ${Get_Response.status_code}
    Log To Console    ${Get_Response.status_code}
	Log To Console    ${Get_Response.content}
    #validation
    ${statusCode}=    Convert To String    ${Get_Response.status_code}
    Should Be Equal    ${statusCode}    200

