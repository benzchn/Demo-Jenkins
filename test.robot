*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    Chrome
${WELCOME URL}    https://www.google.co.th
${DELAY}    0
${SITE}    http://www.cs.kku.ac.th
***Test Cases***
Open Welcome Page
	Open Browser    ${WELCOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
Welcome Page Should Be Open
	Location Should Be    ${WELCOME URL}
Input site
	Input Text    q    ${SITE}
	Click Button    btnK