@ConnectRegression @ServicesUKPack
Feature: Test that TPN Connect allows different collection requests for UK users
    As a user
    I want to be able to put on a collection via TPN Connect


Background:
        Given I open the site "/" 

@C2324

    Scenario Outline: Testing Standard Collection Entry for Implant User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on collection request
    And I have entered the <CustomerRef> as my customer reference
    And I have set the Collection Postcode as <CollPostcode>
    And I have set the Consignor as <Consignor>
    And I have set the Collection Address 1 as <CAddress1>
    And I have set the Collection Address 2  as <CAddress2>
    And I have set the Collection Town as <CollectionTown>
    And I have set the Collection County as <CollectionCounty>

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight | CollPostcode |Consignor| CAddress1 |CAddress2 |CollectionTown |CollectionCounty |
    |"Implant User"   |"051APLACE"    |"beans"     | "C2324"    | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "ND"       | "LukeG" | "0123456789" | "Full" | "1"      | "150"  |"B36 0EY"     |"LukeG"  | "test"    |"test"    |"test"         |"test"           |