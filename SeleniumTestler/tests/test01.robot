*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
ilk testim
    [Tags]    ysf
    Open Browser    https://www.google.com.tr    ${BROWSER}
    Sleep    1
    Click Button    Accept all
    Input Text    APjFqb    Robot Framework
    Press Keys    APjFqb    ENTER
    ${sonucTexti}=    Get Text    id=result-stats
    # About 80 300 000 results (0,27 seconds)
    Log To Console    ${sonucTexti}
