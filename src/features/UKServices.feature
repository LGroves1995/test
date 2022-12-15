@ConnectRegression @ServicesUKPack
Feature: Test that TPN Connect allows different services for consignment entry works for UK users
    As a user
    I want to be able to put on a consignment via TPN Connect


Background:
        Given I open the site "/" 

@UKImplantStandardServices @C2867 @C2870 @C2873 @C2876 @C3215 @C3218 @C3221 @C3224 @C3203 @C3206 @C3209
    Scenario Outline: Testing different standard Services Entries for Implant Users       
    Given I have logged in to TPN Connect with username <Username> and password <Password>
    When I have clicked on consignment entry
    And I have entered the <CustomerRef> as my customer reference
    And I have entered <Postcode> as the postcode
    And I have entered <Consignee> as the consignee name
    And I have entered <Address1> as the address field 1
    And I have entered <Address2> as the address field 2
    And I have entered <Town> as the town
    And I have entered <County> as the county
    And I have set <DelService> as the Delivery Service
    And I have enetered <Contact> as the Contact
    And I have enetered <Phone> as the Telephone Number
    And I have enetered <Phone2> as the Telephone Number 2
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button


    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Phone      | Pallet | Quantity | Weight |
    |"Implant User"   |"051APLACE"    |"beans"     | "C2867"    | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "AM"       | "TEST"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"beans"     | "C2870"    | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "AMTL"     | "TEST"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"beans"     | "C2873"    | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "BKIN"     | "TEST"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"beans"     | "C2876"    | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "BKIT"     | "TEST"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"beans"     | "C3215"    | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "EC"       | "TEST"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"beans"     | "C3218"    | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ECTL"     | "TEST"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"beans"     | "C3221"    | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" |"0123456789"|"Quar"  | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"beans"     | "C3224"    | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "NDTL"     | "TEST"  | "0123456789" |"0123456789"|"Quar"  | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"beans"     | "C3203"    | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "PM"       | "TEST"  | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"beans"     | "C3206"    | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "PMTL"     | "TEST"  | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"beans"     | "C3209"    | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "SAT"      | "TEST"  | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"beans"     | "C3212"    | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "SATL"     | "TEST"  | "0123456789" |"0123456789" |"HH"   | "1"      | "150"  |   
