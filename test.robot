*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${SERVER}    localhost:7272
${BROWSER}    Chrome
${WELCOME URL}    http://${SERVER}/welcome.html
${DELAY}    0
***Test Cases***
Open Welcome Page
	Open Browser    ${WELCOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
Welcome Page Should Be Open
	Location Should Be    ${WELCOME URL}
	Title Should Be    Hello