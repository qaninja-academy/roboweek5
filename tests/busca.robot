* Settings *

Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Take Screenshot

* Test Cases *
Deve buscar um único restaurante
   
    Go To Restaurants
    Search By                        Debuger
    Restaurant Should Be Visible     DEBUGER KING
    Restaurant Count Should Be       1

Deve buscar por categoria
    
    Go To Restaurants
    Search By                       Cafe
    Restaurant Should Be Visible    STARBUGS COFFEE

Deve buscar todos os restaurantes
    
    Go To Restaurants
    Search By                    a
    Restaurant Count Should Be   5
    