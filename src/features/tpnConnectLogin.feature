@ConnectRegression @LoginRegression
Feature: Test that the TPN Connect login function works
    As a user
    I want to be able to login and securely use TPN Connect

    Background:
        Given I open the site "/"

       @C2313 @C2286 @C2312 @ValidLoginRegression
        Scenario Outline: a valid user can login successfully with correct  <UserType> password and username         
        Given I have entered <Username> as userName
        Given I have entered <Password> as password
        When I have clicked on Login button
        Then I click the LogOff button
       

        Examples:
          |UserType         |Username       |Password     |
          |"Implant user"   |"051APLACE"    |"summer"      |
          |"Depot user"     |"051051SHAMEK" |"summer"      |
          |"Hub user"       |"099phillipt"  |"summer"      |
          
        @C3149 @C3150 @C3151 @InvalidLoginRegression
        Scenario Outline: a invalid user is attempting to login using an correct <UserType> username but wrong password     
        Given I have entered <Username> as userName
        Given I have entered <Password> as password
        When I have clicked on Login button
        
        Examples:
          |UserType         |Username       |Password     |
          |"Implant user"   |"051APLACE"    |"heinz"      |
          |"Depot user"     |"051051SHAMEK" |"heinz"      |
          |"Hub user"       |"099phillipt"  |"heinz"      |
          
          