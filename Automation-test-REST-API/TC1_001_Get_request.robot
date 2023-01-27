*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary


*** Variables ***
${API_Base_Endpoint}    http://thetestingworldapi.com/

*** Test Cases ***
TC_001_Get_Request_Fetch_Status_Code
    Create Session    API_Testing    ${API_Base_Endpoint}
    ${Get_Response}=    GET On Session   API_Testing    api/studentsDetails/4189719
    ${statusCode}=    Convert To String    ${Get_Response.status_code}
    Should Be Equal    ${statusCode}    200	
	Log To Console    ${Get_Response.content}

# TC_002_Get_Request_Fetch_Status_Code_negative
#     Create Session    API_Testing    ${API_Base_Endpoint}
#     ${Get_Response}=    GET On Session   API_Testing    api/studentsDetails/1234
# 	Log To Console    ${Get_Response.status_code}
# 	Log To Console    ${Get_Response.content}
#     ${statusCode}=    Convert To String    ${Get_Response.status_code}
#     Should Not Be Equal    ${statusCode}    200