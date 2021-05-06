* Settings *
Documentation       Arquivo base do projeto (tudo começa aqui)

Library         Browser
Library         OperatingSystem

Resource        actions/search.robot
Resource        actions/cart.robot
Resource        actions/order.robot

* Variables *
${DEFAULT_TIMEOUT}      10

* Keywords *
Start Session
    New Browser             ${browser}        ${headless}
    New Page                http://parodifood.qaninja.academy/
    Set Viewport Size       1920    1080
    # Checkpoint
    Get Text        css=span    contains    Nunca foi tão engraçado pedir comida


### Helpers ###
Get JSON
    [Arguments]         ${file_name}

    ${file}         Get File            ${EXECDIR}/resources/fixtures/${file_name}
    ${super_var}    Evaluate            json.loads($file)           json

    [return]        ${super_var}