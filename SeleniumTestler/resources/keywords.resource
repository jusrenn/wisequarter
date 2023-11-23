*** Settings ***
Library         SeleniumLibrary
Library         Collections
Library         FakerLibrary
Variables       Locators.py


*** Keywords ***
Anasayfaya ${BROWSER} Ile Git
    [Documentation]    Parametre olarak gonderilen browser ile anasayfaya gider
    ...    Parametre gonderilmez ise default olarak chrome calisir

    # parametre olarak gelen browser listede yoksa(hatali yazimda) browser'i chrome olarak alsin
    # parametre olarak gelen browser listede varsa o browser'i kullansin
    @{BROWSER_LIST}=    Create List    chrome    firefox    safari    opera    edge
    IF    not "${BROWSER}" in @{BROWSER_LIST}
        ${BROWSER}=    Set Variable    chrome
    END
    Open Browser    https://demowebshop.tricentis.com    ${BROWSER}
    Maximize Browser Window

Anasayfaya Git
    [Documentation]    Parametre olarak gonderilen browser ile anasayfaya gider
    ...    Parametre gonderilmez ise default olarak chrome calisir
    [Arguments]    ${BROWSER}=chrome
    Open Browser    https://demowebshop.tricentis.com    ${BROWSER}
    Maximize Browser Window

Yeni Uyelik Olustur
    [Documentation]    Yeni bir uyelik olusturmaya yarar.
    ...    Parametre olarak Dictionary gondermek gerekir
    [Arguments]    ${user}=faker
    IF    "${user}" == "faker"
        # Asagidaki degerler FakerLibrary'den alindi
        ${gender}=    FakerLibrary.Passport Gender
        ${name}=    FakerLibrary.Name
        ${lastname}=    Last Name
        ${email}=    Email
        ${password}=    Password

        &{user}=    Create Dictionary
        ...    gender=${gender}
        ...    name=${name}
        ...    lastname=${lastname}
        ...    email=${email}
        ...    password=${password}
    END

    Click Link    xpath=${REGISTER}
    Wait Until Page Contains    Your Personal Details    timeout=60
    Select Radio Button    Gender    ${user}[gender]
    Input Text    id=FirstName    ${user}[name]
    Input Text    id=LastName    ${user}[lastname]
    Input Text    id=Email    ${user}[email]
    Input Text    id=Password    ${user}[password]
    Input Text    id=ConfirmPassword    ${user}[password]
    Click Button    id=register-button
    Wait Until Page Contains    Your registration completed    timeout=60
    Page Should Contain    ${user}[email]
    Click Button    xpath=//input[@value="Continue"]

    Set Global Variable    ${user}
