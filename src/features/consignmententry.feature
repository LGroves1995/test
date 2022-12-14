@ConnectRegression
Feature: Test that the TPN Connect different consignment entry functions works
    As a user
    I want to be able to put on a consignment via TPN Connect


Background:
        Given I open the site "/"

@C2322 @C2323
    Scenario Outline: Testing Standard Consignment Entry for Depot User/Hub User   
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on consignment entry
    And I have set the account code as <AccountCode>
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
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2322"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Full" | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"KJ"       | "C2323"     | "RH11 0AA" | "TEST"    |"TEST AVENUE" | "TEST ROAD"  | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Full" | "1"      | "150"  |

@C2287
    Scenario Outline: Testing Standard Consignment Entry for Implant User 
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
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight |
    |"Implant User"   |"051APLACE"    |"beans"     | "C2287"    | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Full" | "1"      | "150"  |

@C2334 @C2335
    Scenario Outline: Testing XL Consignment Entry for Depot User/Hub User
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on consignment entry
    And I have set the account code as <AccountCode>
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
    And I enter <PalletWidth> as my Pallet Width
    And I enter <PalletDepth> as my Pallet Depth
    And I enter <PalletHeight> as my Pallet Height
    And I enter <XLPalletWeight> as my XL Pallet Weight
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | PalletWidth |PalletDepth |PalletHeight| XLPalletWeight |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2334"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "XL"       | "TEST"  | "0123456789" |  "240"      |"240"       | "150"      | "500"          |
    |"Hub User"       |"099phillipt"  |"beans"     |"KJ"       | "C2335"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "XL"       | "TEST"  | "0123456789" |  "240"      |"240"       | "150"      | "500"          |

@C2333 
    Scenario Outline: Testing XL Consignment Entry for Implant User
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
    And I enter <PalletWidth> as my Pallet Width
    And I enter <PalletDepth> as my Pallet Depth
    And I enter <PalletHeight> as my Pallet Height
    And I enter <XLPalletWeight> as my XL Pallet Weight
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    | CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | PalletWidth |PalletDepth |PalletHeight| XLPalletWeight |
    |"Implant User"   |"051APLACE"    |"beans"     | "C2333"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "XL"       | "TEST"  | "0123456789" |  "240"      |"240"       | "150"      | "500"          |

@C2440 @C2441
    Scenario Outline: Testing Self Delivery Consignment Entry for Depot User/Hub User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on consignment entry
    And I have set the account code as <AccountCode>
    And I have entered the <CustomerRef> as my customer reference
    And I have entered <Postcode> as the postcode
    And I have entered <Consignee> as the consignee name
    And I have entered <Address1> as the address field 1
    And I have entered <Address2> as the address field 2
    And I have entered <Town> as the town
    And I have entered <County> as the county
    And I have set <DelService> as the Delivery Service
    And I tick the self delivery box
    And I have enetered <Contact> as the Contact
    And I have enetered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2440"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Quar" | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"KJ"       | "C2441"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Quar" | "1"      | "150"  |

@C2449
    Scenario Outline: Testing FVC Consignment Entry for Implant User 
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
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the FVC button
    And I enter <InsuredName> as my Insured Name
    And I enter <InsuredEmail> as my Insured Email
    And I enter <InsuredAmount> as my Insured Amount
    And I click ok on the FVC approval
    And I click the Finish button

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight | InsuredName | InsuredEmail   | InsuredAmount |
    |"Implant User"   |"051APLACE"    |"beans"     | "C2449"    | "B36 0EY"  | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Full" | "1"      | "150"  | "LUKE"      |"test@test.com" | "10"          |

@C2450 @C2451
    Scenario Outline: Testing FVC Consignment Entry for Implant User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on consignment entry
    And I have set the account code as <AccountCode>
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
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the FVC button
    And I enter <InsuredName> as my Insured Name
    And I enter <InsuredEmail> as my Insured Email
    And I enter <InsuredAmount> as my Insured Amount
    And I click ok on the FVC approval
    And I click the Finish button   

    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight | InsuredName | InsuredEmail   | InsuredAmount |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2450"     | "SW1 3RT"  | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Quar" | "1"      | "150"  | "LUKE"      |"test@test.com" | "10"          |
    |"Hub User"       |"099phillipt"  |"beans"     |"KJ"       | "C2451"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Quar" | "1"      | "150"  | "LUKE"      |"test@test.com" | "10"          |

@C2577
    Scenario Outline: Testing Local Postcode Consignment Entry for Implant User 
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
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight |
    |"Implant User"   |"051APLACE"    |"beans"     | "C2577"    | "TN5 7DL"  | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Full" | "1"      | "150"  |

@C2576 @C2578
    Scenario Outline: Testing Local Postcode Consignment Entry for Depot User/Hub User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on consignment entry
    And I have set the account code as <AccountCode>
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
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2576"     | "TN5 7DL"  | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Full" | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"KJ"       | "C2578"     | "B64 6TJ"  | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Full" | "1"      | "150"  |

@C2606 @C2607
    Scenario Outline: Testing Set Via Depot Consignment Entry for Depot User/Hub User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on consignment entry
    And I have set the account code as <AccountCode>
    And I have entered the <CustomerRef> as my customer reference
    And I have entered <Postcode> as the postcode
    And I have entered <Consignee> as the consignee name
    And I click the Set Depot button
    And I enter <DepotNumber> as my Set Via Depot Number
    And I enter <Reason> as my Set Via Depot Reason
    And I click the Set Depot Ok confirmation button
    And I have entered <Address1> as the address field 1
    And I have entered <Address2> as the address field 2
    And I have entered <Town> as the town
    And I have entered <County> as the county
    And I have set <DelService> as the Delivery Service
    And I have enetered <Contact> as the Contact
    And I have enetered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight |DepotNumber  | Reason                               |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2606"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Full" | "2"      | "150"  | "069"       | "This is a Automated test ran by IT" |
    |"Hub User"       |"099phillipt"  |"beans"     |"KJ"       | "C2607"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Full" | "2"      | "150"  | "069"       | "This is a Automated test ran by IT" |

@C2610
    Scenario Outline: Testing 7.5 Tonne Consignment Entry for Implant User 
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
    And I click the 7.5 Tonne button
    And I have enetered <Contact> as the Contact
    And I have enetered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight |
    |"Implant User"   |"051APLACE"    |"beans"     | "C2610"    | "TN5 7DL"  | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Full" | "1"      | "150"  |

@C2611 @C2612

    Scenario Outline: Testing 7.5 Tonne Consignment Entry for Depot User/Hub User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on consignment entry
    And I have set the account code as <AccountCode>
    And I have entered the <CustomerRef> as my customer reference
    And I have entered <Postcode> as the postcode
    And I have entered <Consignee> as the consignee name
    And I have entered <Address1> as the address field 1
    And I have entered <Address2> as the address field 2
    And I have entered <Town> as the town
    And I have entered <County> as the county
    And I have set <DelService> as the Delivery Service
    And I click the 7.5 Tonne button
    And I have enetered <Contact> as the Contact
    And I have enetered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2611"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Full" | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"KJ"       | "C2612"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "ND"       | "TEST"  | "0123456789" | "Full" | "1"      | "150"  |

@C2616 @C2617 

    Scenario Outline: Testing Red Label Consignment Entry for Depot User/Hub User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on consignment entry
    And I have set the account code as <AccountCode>
    And I have entered the <CustomerRef> as my customer reference
    And I have entered <Postcode> as the postcode
    And I have entered <Consignee> as the consignee name
    And I have entered <Address1> as the address field 1
    And I have entered <Address2> as the address field 2
    And I have entered <Town> as the town
    And I have entered <County> as the county
    And I have set <DelService> as the Delivery Service
    And I click the Red Label  button
    And I have enetered <Contact> as the Contact
    And I have enetered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2611"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "EC"       | "TEST"  | "0123456789" | "Full" | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"KJ"       | "C2612"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "EC"       | "TEST"  | "0123456789" | "Full" | "1"      | "150"  |

@C2620    
    Scenario Outline: Testing Limited Quantity Consignment Entry for Implant User 
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
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the Limited Quantity button
    And I enter <LimitedQuantity> as the Limited Quantity
    And I click the Limited Quantity Submit button
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight | LimitedQuantity |
    |"Implant User"   |"051APLACE"    |"beans"     | "C2620"    | "TN5 7DL"  | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "AM"       | "TEST"  | "0123456789" | "Half" | "3"      | "150"  | "1201"          |

@C2621 @C2622    
    Scenario Outline: Testing Limited Quantity Consignment Entry for Depot/Hub User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on consignment entry
    And I have set the account code as <AccountCode>
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
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the Limited Quantity button
    And I enter <LimitedQuantity> as the Limited Quantity
    And I click the Limited Quantity Submit button
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    
    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight | LimitedQuantity |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2621"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "EC"       | "TEST"  | "0123456789" | "Half" | "3"      | "150"  | "1201"          |
    |"Hub User"       |"099phillipt"  |"beans"     |"KJ"       | "C2622"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "EC"       | "TEST"  | "0123456789" | "Half" | "3"      | "150"  | "1201"          |

@C2629 
    Scenario Outline: Testing COP No Image Attached Consignment Entry for Implant User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on consignment entry
    And I have entered the <CustomerRef> as my customer reference
    And I click the Own Paperwork button
    And I have entered <Postcode> as the postcode
    And I have entered <Consignee> as the consignee name
    And I have entered <Address1> as the address field 1
    And I have entered <Address2> as the address field 2
    And I have entered <Town> as the town
    And I have entered <County> as the county
    And I have set <DelService> as the Delivery Service
    And I have enetered <Contact> as the Contact
    And I have enetered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight | 
    |"Implant User"   |"051APLACE"    |"beans"     | "C2629"    | "B36 0EY"  | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "AMTL"     | "TEST"  | "0123456789" | "Half" | "3"      | "150"  |

@C2630 @C2631
    Scenario Outline: Testing COP No Image Attached Consignment Entry for Depot/Hub User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on consignment entry
    And I have set the account code as <AccountCode>
    And I have entered the <CustomerRef> as my customer reference
    And I click the Own Paperwork button
    And I have entered <Postcode> as the postcode
    And I have entered <Consignee> as the consignee name
    And I have entered <Address1> as the address field 1
    And I have entered <Address2> as the address field 2
    And I have entered <Town> as the town
    And I have entered <County> as the county
    And I have set <DelService> as the Delivery Service
    And I have enetered <Contact> as the Contact
    And I have enetered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button
    
    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight | 
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2630"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "EC"       | "TEST"  | "0123456789" | "Full" | "2"      | "150"  |   
    |"Hub User"       |"099phillipt"  |"beans"     |"KJ"       | "C2631"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "EC"       | "TEST"  | "0123456789" | "Full" | "2"      | "150"  |

@C2626   
    Scenario Outline: Testing COPImage Attached Consignment Entry for Implant User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on consignment entry
    And I have entered the <CustomerRef> as my customer reference
    And I click the Own Paperwork button
    And I upload the Own Paperwork File
    And I have entered <Postcode> as the postcode
    And I have entered <Consignee> as the consignee name
    And I have entered <Address1> as the address field 1
    And I have entered <Address2> as the address field 2
    And I have entered <Town> as the town
    And I have entered <County> as the county
    And I have set <DelService> as the Delivery Service
    And I have enetered <Contact> as the Contact
    And I have enetered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight | 
    |"Implant User"   |"051APLACE"    |"beans"     | "C2626"    | "B36 0EY"  | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "AMTL"     | "TEST"  | "0123456789" | "Half" | "3"      | "150"  |

@C2627 @C2628
    Scenario Outline: Testing COP No Image Attached Consignment Entry for Depot/Hub User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on consignment entry
    And I have set the account code as <AccountCode>
    And I have entered the <CustomerRef> as my customer reference
    And I click the Own Paperwork button
    And I upload the Own Paperwork File
    And I have entered <Postcode> as the postcode
    And I have entered <Consignee> as the consignee name
    And I have entered <Address1> as the address field 1
    And I have entered <Address2> as the address field 2
    And I have entered <Town> as the town
    And I have entered <County> as the county
    And I have set <DelService> as the Delivery Service
    And I have enetered <Contact> as the Contact
    And I have enetered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button
    
    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight | 
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2627"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "EC"       | "TEST"  | "0123456789" | "Full" | "2"      | "150"  |   
    |"Hub User"       |"099phillipt"  |"beans"     |"KJ"       | "C2628"     | "RH11 0AA" | "TEST"    |"TEST AVENUE"  | "TEST ROAD" | "Birmingham"| "West Midlands" | "EC"       | "TEST"  | "0123456789" | "Full" | "2"      | "150"  |