*** Settings ***
Library         SeleniumLibrary
Variables       Locators.py


*** Keywords ***
Anasayfaya ${BROWSER} Ile Git
    # parametre olarak gelen browser listede yoksa(hatali yazimda) browser'i chrome olarak alsin
    # parametre olarak gelen browser listede varsa o browser'i kullansin
    @{BROWSER_LIST}=    Create List    chrome    firefox    safari    opera    edge
    IF    not "${BROWSER}" in @{BROWSER_LIST}
        ${BROWSER}=    Set Variable    chrome
    END
    Open Browser    https://demowebshop.tricentis.com    ${BROWSER}

Anasayfaya Git
    [Arguments]    ${BROWSER}=chrome
    Open Browser    https://demowebshop.tricentis.com    ${BROWSER}

Yeni Uyelik Olustur
    [Arguments]    ${user}

    Click Link    xpath=${REGISTER}
    Select Radio Button    Gender    ${user}[gender]
    Input Text    id=FirstName    ${user}[name]
    Input Text    id=LastName    ${user}[lastname]
    Input Text    id=Email    ${user}[email]
    Input Text    id=Password    ${user}[password]
    Input Text    id=ConfirmPassword    ${user}[password]
    Click Button    id=register-button
