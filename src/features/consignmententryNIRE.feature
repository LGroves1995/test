@ConnectRegression @ConsignmentEntryNIREPack
Feature: TPN Connect different consignment entry functions works for Northern IRE users
    As a NIRE user
    I want to be able to put on a consignment via TPN Connect

Background:
        Given I open the site "/"

@C2684
    Scenario Outline: Testing Standard Consignment Entry for NIRE Implant User 
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1     | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight |
    |"Implant User"   |"101abv"       |"magazine"  | "C2684"    | "WX"       | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "ND"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  |

@C2685 
    Scenario Outline: Testing Standard Consignment Entry for  NIRE Depot User  
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password     |AccountCode| CustomerRef | Postcode   | Consignee | Address1     | Address2    | Town   | County   | DelService | Contact | Phone        | Pallet | Quantity | Weight |
    |"Depot User"     |"setup101"     |"magazine"   |"AV"       | "C2685"     | "D01"      | "LukeG"   |"TPN Avenue"  | "TPN Road"  |"Test"| "Test" | "B4"       | "LukeG" | "0123456789" | "Full" | "1"      | "150"  |

@C2698
    Scenario Outline: Testing EU Consignment Entry for NIRE Implant User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on consignment entry
    And I have entered the <CustomerRef> as my customer reference
    And I have entered <Postcode> as the postcode
    And I have entered <Consignee> as the consignee name
    And I have entered <Address1> as the address field 1
    And I have entered <Address2> as the address field 2
    And I have entered <Town> as the town
    And I have entered <County> as the county
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I enter <PalletWidth> as my Pallet Width
    And I enter <PalletDepth> as my Pallet Depth
    And I enter <PalletHeight> as my Pallet Height
    And I enter <XLPalletWeight> as my XL Pallet Weight
    And I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username   |Password    |CustomerRef | Postcode | Consignee | Address1      | Address2    | Town   | County |Contact | Phone       | PalletWidth|PalletDepth | PalletHeight|XLPalletWeight|
    |"Implant User"   |"101abv"   |"magazine"  | "C2698"    | "GE4"    | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test" | "Test" |"LukeG" | "0123456789"| "120"      |"120"       |"200"        |"1000"        |

@C2699 
    Scenario Outline: Testing EU Consignment Entry for NIRE Depot User 
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I enter <PalletWidth> as my Pallet Width
    And I enter <PalletDepth> as my Pallet Depth
    And I enter <PalletHeight> as my Pallet Height
    And I enter <XLPalletWeight> as my XL Pallet Weight
    And I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username    |Password   |AccountCode |CustomerRef | Postcode | Consignee | Address1      | Address2    | Town   | County |Contact | Phone       | PalletWidth|PalletDepth | PalletHeight|XLPalletWeight|
    |"Depot User"     |"setup101"  |"magazine"    |"AV"    |"C2699"     | "GE4"    | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test" | "Test" |"LukeG" | "0123456789"| "120"      |"120"       |"200"        |"1000"        |

@C2700
    Scenario Outline: Testing XL Consignment Entry for NIRE Implant User
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I enter <PalletWidth> as my Pallet Width
    And I enter <PalletDepth> as my Pallet Depth
    And I enter <PalletHeight> as my Pallet Height
    And I enter <XLPalletWeight> as my XL Pallet Weight
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username    |Password    | CustomerRef | Postcode  | Consignee | Address1      | Address2    | Town  | County | DelService | Contact  | Phone        | PalletWidth |PalletDepth |PalletHeight| XLPalletWeight |
    |"Implant User"   |"101abv"    |"magazine"    | "C2700"     | "WX"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "test" | "XL"       | "LukeG"  | "0123456789" |  "240"      |"240"       | "150"      | "500"          |

@C2701
    Scenario Outline: Testing XL Consignment Entry for Depot User
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I enter <PalletWidth> as my Pallet Width
    And I enter <PalletDepth> as my Pallet Depth
    And I enter <PalletHeight> as my Pallet Height
    And I enter <XLPalletWeight> as my XL Pallet Weight
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode |CustomerRef | Postcode   | Consignee | Address1      | Address2   | Town  | County | DelService | Contact  | Phone        | PalletWidth |PalletDepth |PalletHeight| XLPalletWeight |
    |"Depot User"     |"setup101"     |"magazine"    |"AV"    |"C2701"     | "WX"      | "LukeG"    |"TPN Avenue"   | "TPN Road" | "Test"| "Test" | "XL"       | "LukeG"  | "0123456789" |  "240"      |"240"       | "150"      | "500"          |

@C2702 
    Scenario Outline: Testing Self Delivery Consignment Entry for NIRE Depot User 
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |AccountCode |Password     |CustomerRef | Postcode  | Consignee  | Address1     | Address2   | Town   | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight |
    |"Depot User"     |"setup101"     |"AV"    |"magazine"      |"C2702"     | "SA71 4TA"| "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test" | "Test" | "NDTL"     | "LukeG"  | "0123456789" | "Half" | "1"      | "150"  |

@C2703
    Scenario Outline: Testing FVC Consignment Entry for NIRE Implant User 
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the FVC button
    And I enter <InsuredName> as my Insured Name
    And I enter <InsuredEmail> as my Insured Email
    And I enter <InsuredAmount> as my Insured Amount
    And I click ok on the FVC approval
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username    |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight | InsuredName | InsuredEmail     | InsuredAmount |
    |"Implant User"   |"101abv"    |"magazine"     |"C2703"    | "SA71 4TA" | "LukeG"   |"TPN Avenue"   | "TPN Road" | "Test"| "Test" | "AMTL"     | "LukeG"  | "0123456789" | "FF"   | "1"      | "150"  | "LUKE"      |"LukeG@LukeG.com" | "1000"        |

@C2704
    Scenario Outline: Testing FVC Consignment Entry for NIRE Depot
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the FVC button
    And I enter <InsuredName> as my Insured Name
    And I enter <InsuredEmail> as my Insured Email
    And I enter <InsuredAmount> as my Insured Amount
    And I click ok on the FVC approval
    And I click the Finish button 
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button  

    Examples:
    |UserType         |Username       |Password    |AccountCode |CustomerRef | Postcode   | Consignee | Address1      | Address2   | Town | County   | DelService | Contact  | Phone        | Pallet | Quantity | Weight | InsuredName | InsuredEmail     | InsuredAmount  |
    |"Depot User"     |"setup101"     |"magazine"     |"AV"    | "C2704"    | "SA71 4TA" | "LukeG"   |"TPN Avenue"   | "TPN Road" |"Test"| "Test"   | "AM"       | "LukeG"  | "0123456789" | "Quar" | "1"      | "150"  | "LUKE"      |"LukeG@LukeG.com" | "1000"         |

@C2705
    Scenario Outline: Testing Local Postcode Consignment Entry for NIRE Implant User 
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username   |Password     |CustomerRef| Postcode   | Consignee | Address1      | Address2   | Town        | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight |
    |"Implant User"   |"101abv"   |"magazine"      |"C2705"    | "WT"       | "LukeG"   |"TPN Avenue"   | "TPN Road" | "Test"      | "Test" | "AM"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  |

@C2706 
    Scenario Outline: Testing Local Postcode Consignment Entry for NIRE Depot User 
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username   |Password    |AccountCode |CustomerRef | Postcode   | Consignee | Address1      | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight |
    |"Depot User"     |"setup101" |"magazine"     |"AV"    |"C2706"     | "WT"       | "LukeG"   |"TPN Avenue"   | "TPN Road" | "Test"| "Test" | "ND"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  |

@C2710
    Scenario Outline: Testing Set Via Depot Consignment Entry for NIRE Depot User
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
    And I click the Set Depot button
    And I enter <DepotNumber> as my Set Via Depot Number
    And I enter <Reason> as my Set Via Depot Reason
    And I click the Set Depot Ok confirmation button
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode | Consignee  | Address1     | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight |DepotNumber  | Reason                               |
    |"Depot User"     |"setup101"     |"magazine"    |"AV"    | "C2710"     | "D02"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "ND"       | "LukeG"  | "0123456789" | "Full" | "2"      | "150"  | "110"       | "This is a Automated LukeG ran by IT" |

@C2711
    Scenario Outline: Testing 7.5 Tonne Consignment Entry for NIRE Implant User 
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username    |Password    |CustomerRef | Postcode  | Consignee | Address1      | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight |
    |"Implant User"   |"101abv"    |"magazine"     | "C2711"    | "WX"      | "LukeG"   |"TPN Avenue"   | "TPN Road" | "Test"| "Test" | "ND"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  |

@C2713

    Scenario Outline: Testing 7.5 Tonne Consignment Entry for NIRE Depot User
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username   |Password    |AccountCode| CustomerRef | Postcode| Consignee  | Address1     | Address2    | Town | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight |
    |"Depot User"     |"setup101" |"magazine"     |"AV"   | "C2712"     | "WX"    | "LukeG"    |"TPN Avenue"  | "TPN Road"  |"Test"| "Test" | "ND"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  |

@C2715    
    Scenario Outline: Testing Limited Quantity Consignment Entry for NIRE Implant User 
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the Limited Quantity button
    And I enter <LimitedQuantity> as the Limited Quantity
    And I click the Limited Quantity Submit button
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username   |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2    |Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight | LimitedQuantity |
    |"Implant User"   |"101abv"   |"magazine"     | "C2714"    | "D01"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  |"Test"| "Test" | "ND"       | "LukeG"  | "0123456789" | "Half" | "3"      | "150"  | "1201"          |

@C2716    
    Scenario Outline: Testing Limited Quantity Consignment Entry for NIRE Depot User 
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    And I click the Limited Quantity button
    And I enter <LimitedQuantity> as the Limited Quantity
    And I click the Limited Quantity Submit button
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button
    
    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode | Consignee | Address1     | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight | LimitedQuantity |
    |"Depot User"     |"setup101"     |"magazine"     |"AV"   | "C2715"     | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EC"       | "LukeG"  | "0123456789" | "Half" | "3"      | "150"  | "1201"          |

@C2717
    Scenario Outline: Testing COP No Image Attached Consignment Entry for NIRE Implant User 
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username   |Password    |CustomerRef | Postcode| Consignee | Address1   | Address2    | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight | 
    |"Implant User"   |"101abv"   |"magazine"     | "C2717"    | "D01"   | "LukeG"   |"TPN Avenue"| "TPN Road"  | "Test"| "Test" | "AMTL"     | "LukeG"  | "0123456789" | "Half" | "3"      | "150"  |

@C2718
    Scenario Outline: Testing COP No Image Attached Consignment Entry for  NIRE Depot User 
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button
    
    Examples:
    |UserType         |Username   |Password    |AccountCode| CustomerRef | Postcode | Consignee  | Address1     | Address2    | Town  | County | DelService | Contact | Phone         | Pallet | Quantity | Weight | 
    |"Depot User"     |"setup101" |"magazine"     |"AV"   | "C2718"     | "WX"     | "LukeG"    |"TPN Avenue"  | "TPN Road"  | "Test"| "Test" | "EC"       | "LukeG"  | "0123456789" | "Full" | "2"      | "150"  |   

@C2719   
    Scenario Outline: Testing COPImage Attached Consignment Entry for NIRE Implant User 
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username    |Password    |CustomerRef | Postcode| Consignee | Address1     | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight | 
    |"Implant User"   |"101abv"    |"magazine"     | "C2719"    | "D01"   | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "AMTL"     | "LukeG"  | "0123456789" | "Half" | "3"      | "150"  |

@C2720 
    Scenario Outline: Testing COP Image Attached Consignment Entry for NIRE Depot User 
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
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have added <Pallet> as the Pallet Type
    And I have added <Quantity> as the Quantity
    And I have set <Weight> for the weight
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button
    
    Examples:
    |UserType         |Username   |Password    |AccountCode| CustomerRef | Postcode| Consignee  | Address1     | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight | 
    |"Depot User"     |"setup101" |"magazine"     |"AV"   | "C2720"     | "D01"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EC"       | "LukeG"  | "0123456789" | "Full" | "2"      | "150"  |   
