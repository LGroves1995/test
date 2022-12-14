@smoke
Feature: Test that the TPN Connect day end function works
    As a Depot user
    I want to be able to login and securely use the Day End Funcion on TPN Connect

    Background:
    Given I open the site "/"

    @DepotDayEnd
    Scenario Outline: a valid depot user can the day end fucntion       
    Given I have logged in to TPN Connect with username <Username> and password <Password>
    When I click on Day End
    When I click on Day End Okay confirmation
    Then I click the LogOff button
    Then I click on consignment entry
        
    Examples:
    |UserType         |Username       |Password     |
    |"Depot User"     |"051051SHAMEK" |"beans"      |
          