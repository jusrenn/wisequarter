*** Settings ***
Library         RequestsLibrary
Library         Collections

Test Setup      Create Session    nasa    ${BASE_URL}


*** Variables ***
${BASE_URL}=    https://api.nasa.gov
${API_KEY}=     bLWvUQ04lBW4wFVc5Hg6Y48qARTr8BqwQCZ7uUef


*** Test Cases ***
API TESTI 01
    [Documentation]    APOD API testi
    ${END_POINT}=    Set Variable    planetary/apod
    ${PARAMETRE}=    Create Dictionary    api_key=${API_KEY}

    ${response}=    GET On Session    nasa    ${END_POINT}    ${PARAMETRE}

    Status Should Be    200
    Log To Console    ${response.json()}

API TESTI 02
    [Documentation]    Mars fotolarinin api testi
    ${END_POINT}=    Set Variable    mars-photos/api/v1/rovers/curiosity/photos
    ${PARAMETRE}=    Create Dictionary    sol=1000    page=2    api_key=${API_KEY}

    ${response}=    GET On Session    nasa    ${END_POINT}    ${PARAMETRE}
    Status Should Be    200
    Log To Console    ${response.json()}
