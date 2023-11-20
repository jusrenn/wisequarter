*** Settings ***
Resource    ../resources/keywords.resource


*** Variables ***
&{USER}=    gender=M    name=Yusuf    lastname=Ren    email=yusuf@wisequarter.com    password=1234567890


*** Test Cases ***
Test 001
    Anasayfaya ${BROWSER} Ile Git
    # Yeni Uyelik Olustur    ${USER}
    Yeni Uyelik Olustur
