*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When value is set to a nonzero value the counter shows that value
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 10 kertaa
    Fill Text  input[name="value"]  5
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 5 kertaa