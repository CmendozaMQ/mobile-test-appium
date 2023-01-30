*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary


*** Variables ***
${API_Base_Endpoint}    http://thetestingworldapi.com/

*** Test Cases ***
TC_002_Get_Request_Fetch_Sresponse_validate_Content
    Create Session    API_Testing    ${API_Base_Endpoint}
    ${Get_Response}=    GET On Session   API_Testing    api/studentsDetails/4189719
    Log To Console    ${Get_Response.content}
	${json_Response}=    Set Variable    ${Get_Response.json()}
    @{id}=    Get Value From Json    ${json_Response}    $.data.id
    ${id_data}=    Get From List    ${id}    0
    Log To Console    ${id_data}
    ${id_data_st}=    Convert To String    ${id_data}
    Should Be Equal    ${id_data_st}    4189719