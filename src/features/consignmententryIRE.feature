@ConnectRegression @ConsignmentEntryIREPack
Feature: TPN Connect different consignment entry functions works for IRE users
    As a IRE user
    I want to be able to put on a consignment via TPN Connect


Background:
        Given I open the site "/"

@C2641
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
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight |
    |"Implant User"   |"102ability"   |"beans"     | "C2641"    | "CKC"      | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "ND"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  |

@C2642 @C2643
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
    |"Depot User"     |"setup110"     |"beans"      |"test"     | "C2642"     | "D01"      | "LukeG"   |"TPN Avenue"  | "TPN Road"  |"Dublin"| "Dublin" | "ND"       | "LukeG" | "0123456789" | "Full" | "1"      | "150"  |
    |"Hub User"       |"setup100"     |"beans"      |"test"     | "C2643"     | "D01"      | "LukeG"   |"TPN Avenue"  | "TPN Road"  |"Dublin"| "Dublin" | "ND"       | "LukeG" | "0123456789" | "Full" | "1"      | "150"  |

@C2644
    Scenario Outline: Testing Standard Brexit Consignment Entry for Implant User 
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
    And I have set <CustomerEmail> as my customs customer email
    And I have set <CommodityCode> as my commodity code
    And I have set <InvoiceValue> as my invoice value
    And I have set <NetWeight> as my net weight
    And I have set <GrossWeight> as my gross weight
    And I have set <NumberPallets> as my number of pallets
    And I have set <DefermentType> as my deferment type
    And I have set <AccountDAN> as my account DAN
    And I have set <FOB> as my fob value
    And I have set <InvoiceNumber> as my invoice number
    And I have set <IncoTerms> as my inco terms
    And I upload the commerical invoice
    And I upload the transport document
    And I have set <ExporterEORI> as my exporter EORI
    And I have set <ImporterEORI> as my importer EORI
    And I have set <ImporterPostcode> as my importer postcode
    And I upload the representation doucment
    And I click the goods licensing box
    And I click the goods declaration box
    And I click the submit and complete button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Pallet | Quantity | Weight | CustomerEmail   | CommodityCode | InvoiceValue | NetWeight | GrossWeight | NumberPallets | DefermentType | AccountDAN   | FOB   | InvoiceNumber | IncoTerms | ExporterEORI    | ImporterEORI    | ImporterPostcode |
    |"Implant User"   |"102Ability"   |"beans"     | "C2644"    | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EC"       | "LukeG" | "0123456789" | "FF"   | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "1"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"    |"GB989853334000" | "RH11 0AA"       |

@C2645 @C2646
    Scenario Outline: Testing Standard Brexit Consignment Entry for Depot/Hub User 
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
    Then I click the Finish button
    And I have set <CustomerEmail> as my customs customer email
    And I have set <CommodityCode> as my commodity code
    And I have set <InvoiceValue> as my invoice value
    And I have set <NetWeight> as my net weight
    And I have set <GrossWeight> as my gross weight
    And I have set <NumberPallets> as my number of pallets
    And I have set <DefermentType> as my deferment type
    And I have set <AccountDAN> as my account DAN
    And I have set <FOB> as my fob value
    And I have set <InvoiceNumber> as my invoice number
    And I have set <IncoTerms> as my inco terms
    And I upload the commerical invoice
    And I upload the transport document
    And I have set <ExporterEORI> as my exporter EORI
    And I have set <ImporterEORI> as my importer EORI
    And I have set <ImporterPostcode> as my importer postcode
    And I upload the representation doucment
    And I click the goods licensing box
    And I click the goods declaration box
    And I click the submit and complete button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1     | Address2   | Town        | County          | DelService | Contact  | Phone        | Pallet | Quantity | Weight | CustomerEmail   | CommodityCode | InvoiceValue | NetWeight | GrossWeight | NumberPallets | DefermentType | AccountDAN   | FOB   | InvoiceNumber | IncoTerms | ExporterEORI| ImporterEORI     | ImporterPostcode |
    |"Depot User"     |"setup110"     |"beans"     |"test"     | "C2645"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EC"       | "LukeG"  | "0123456789" | "FF"   | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |  
    |"Hub User"       |"setup100"     |"beans"     |"test"     | "C2646"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EC"       | "LukeG"  | "0123456789" | "FF"   | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |

@C2647
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
    |UserType         |Username       |Password    | CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town  | County | DelService | Contact  | Phone        | PalletWidth |PalletDepth |PalletHeight| XLPalletWeight |
    |"Implant User"   |"102Ability"    |"beans"    | "C2647"     | "CKC"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Cork"| "Cork" | "XL"       | "LukeG"  | "0123456789" |  "240"      |"240"       | "150"      | "500"          |

@C2648 @C2649
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
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2   | Town  | County | DelService | Contact  | Phone        | PalletWidth |PalletDepth |PalletHeight| XLPalletWeight |
    |"Depot User"     |"setup110"     |"beans"     |"test"     | "C2648"     | "CKC"      | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "XL"       | "LukeG"  | "0123456789" |  "240"      |"240"       | "150"      | "500"          |
    |"Hub User"       |"setup100"     |"beans"     |"test"     | "C2649"     | "CKC"      | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "XL"       | "LukeG"  | "0123456789" |  "240"      |"240"       | "150"      | "500"          |

@C2650
    Scenario Outline: Testing XL Consignment Entry to NI for IRE Implant User
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
    |UserType         |Username       |Password    | CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town  | County | DelService | Contact  | Phone        | PalletWidth |PalletDepth |PalletHeight| XLPalletWeight |
    |"Implant User"   |"102Ability"    |"beans"    | "C2650"     | "BT10 0TJ" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "XL"       | "LukeG"  | "0123456789" |  "240"      |"240"       | "150"      | "500"          |

@C2651 @C2652
    Scenario Outline: Testing XL Consignment Entry to NI for IRE Depot User/Hub User
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
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2   | Town  | County | DelService | Contact  | Phone        | PalletWidth |PalletDepth |PalletHeight| XLPalletWeight |
    |"Depot User"     |"setup110"     |"beans"     |"test"     | "C2651"     | "BT10 0TJ" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "XL"       | "LukeG"  | "0123456789" |  "240"      |"240"       | "150"      | "500"          |
    |"Hub User"       |"setup100"     |"beans"     |"test"     | "C2652"     | "BT10 0TJ" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "XL"       | "LukeG"  | "0123456789" |  "240"      |"240"       | "150"      | "500"          |

@C2653 @C2654
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
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode | Consignee  | Address1     | Address2   | Town    | County   | DelService | Contact  | Phone        | Pallet | Quantity | Weight |
    |"Depot User"     |"setup110"     |"beans"     |"test"     | "C2653"     | "D01"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Dublin"| "Dublin" | "ND"       | "LukeG"  | "0123456789" | "Quar" | "1"      | "150"  |
    |"Hub User"       |"setup100"     |"beans"     |"test"     | "C2654"     | "D01"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Dublin"| "Dublin" | "ND"       | "LukeG"  | "0123456789" | "Quar" | "1"      | "150"  |

@C2655
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
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight | InsuredName | InsuredEmail     | InsuredAmount |
    |"Implant User"   |"102Ability"    |"beans"    | "C2655"    | "WX"       | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "ND"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  | "LUKE"      |"LukeG@LukeG.com" | "1000"        |

@C2656 @C2657
    Scenario Outline: Testing FVC Consignment Entry for Depot/Hub User 
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
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2   | Town    | County   | DelService | Contact  | Phone        | Pallet | Quantity | Weight | InsuredName | InsuredEmail     | InsuredAmount  |
    |"Depot User"     |"setup110"     |"beans"     |"test"     | "C2656"     | "D01"      | "LukeG"   |"TPN Avenue"   | "TPN Road" |"Dublin" | "Dublin" | "ND"       | "LukeG"  | "0123456789" | "Quar" | "1"      | "150"  | "LUKE"      |"LukeG@LukeG.com" | "1000"         |
    |"Hub User"       |"setup100"     |"beans"     |"test"     | "C2657"     | "D01"      | "LukeG"   |"TPN Avenue"   | "TPN Road" |"Dublin" | "Dublin" | "ND"       | "LukeG"  | "0123456789" | "Quar" | "1"      | "150"  | "LUKE"      |"LukeG@LukeG.com" | "1000"         |

@C2658
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
    |UserType         |Username       |Password    |CustomerRef| Postcode   | Consignee | Address1      | Address2   | Town        | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight |
    |"Implant User"   |"102Ability"   |"beans"     | "C2658"   | "CKC"      | "LukeG"   |"TPN Avenue"   | "TPN Road" | "Cork"      | "Cork" | "ND"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  |

@C2659 @C2660
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
    |UserType         |Username   |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight |
    |"Depot User"     |"setup110" |"beans"     |"test"     | "C2659"     | "WX"       | "LukeG"   |"TPN Avenue"   | "TPN Road" | "Cork"| "Cork" | "ND"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  |
    |"Hub User"       |"setup100" |"beans"     |"test"     | "C2660"     | "WX"       | "LukeG"   |"TPN Avenue"   | "TPN Road" | "Cork"| "Cork" | "ND"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  |

@C2661 @C2662
    Scenario Outline: Testing Set Via Depot Consignment Entry for Depot User/Hub User 
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
    |"Depot User"     |"setup110"     |"beans"     |"test"     | "C2661"     | "CKC"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "ND"       | "LukeG"  | "0123456789" | "Full" | "2"      | "150"  | "105"       | "This is a Automated LukeG ran by IT" |
    |"Hub User"       |"setup100"     |"beans"     |"test"     | "C2662"     | "D01"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "ND"       | "LukeG"  | "0123456789" | "Full" | "2"      | "150"  | "105"       | "This is a Automated LukeG ran by IT" |

@C2663
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
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight |
    |"Implant User"   |"102Ability"    |"beans"    | "C2663"    | "D01"      | "LukeG"   |"TPN Avenue"   | "TPN Road" | "Cork"| "Cork" | "ND"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  |

@C2664 @C2665

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
    |UserType         |Username   |Password    |AccountCode| CustomerRef | Postcode| Consignee  | Address1     | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight |
    |"Depot User"     |"setup110" |"beans"     |"test"     | "C2664"     | "CKC"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "ND"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  |
    |"Hub User"       |"setup100" |"beans"     |"test"     | "C2665"     | "CKC"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "ND"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  |

@C2666    
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
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town   | County   | DelService | Contact  | Phone        | Pallet | Quantity | Weight | LimitedQuantity |
    |"Implant User"   |"102Ability"   |"beans"     | "C2666"    | "D01"      | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Dublin"| "Dublin" | "AM"       | "LukeG"  | "0123456789" | "Half" | "3"      | "150"  | "1201"          |

@C2667 @C2668    
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
    |"Depot User"     |"setup110"     |"beans"     |"test"     | "C2667"     | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "EC"       | "LukeG"  | "0123456789" | "Half" | "3"      | "150"  | "1201"          |
    |"Hub User"       |"setup100"     |"beans"     |"test"     | "C2668"     | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "EC"       | "LukeG"  | "0123456789" | "Half" | "3"      | "150"  | "1201"          |

@C2670
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
    |UserType         |Username       |Password    |CustomerRef | Postcode| Consignee | Address1   | Address2    | Town    | County   | DelService | Contact  | Phone        | Pallet | Quantity | Weight | 
    |"Implant User"   |"102Ability"   |"beans"     | "C2672"    | "D01"   | "LukeG"   |"TPN Avenue"| "TPN Road"  | "Dublin"| "Dublin" | "AMTL"     | "LukeG"  | "0123456789" | "Half" | "3"      | "150"  |

@C2672 @C2674
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
    |"Depot User"     |"setup110" |"beans"     |"test"     | "C2672"     | "WX"     | "LukeG"    |"TPN Avenue"  | "TPN Road"  | "Cork"| "Cork" | "EC"       | "LukeG"  | "0123456789" | "Full" | "2"      | "150"  |   
    |"Hub User"       |"setup100" |"beans"     |"test"     | "C2674"     | "WX"     | "LukeG"    |"TPN Avenue"  | "TPN Road"  | "Cork"| "Cork" | "EC"       | "LukeG"  | "0123456789" | "Full" | "2"      | "150"  |

@C2669   
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
    |UserType         |Username       |Password    |CustomerRef | Postcode| Consignee | Address1     | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight | 
    |"Implant User"   |"102Ability"    |"beans"    | "C2669"    | "WX"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "AMTL"     | "LukeG"  | "0123456789" | "Half" | "3"      | "150"  |

@C2671 @C2673
    Scenario Outline: Testing COP Image Attached Consignment Entry for Depot/Hub User 
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
    |"Depot User"     |"setup110" |"beans"     |"test"     | "C2672"     | "CKC"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "EC"       | "LukeG"  | "0123456789" | "Full" | "2"      | "150"  |   
    |"Hub User"       |"setup100" |"beans"     |"test"     | "C2674"     | "CKC"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "EC"       | "LukeG"  | "0123456789" | "Full" | "2"      | "150"  |

@C2675
    Scenario Outline: Testing Cheque on Delivery for Implant User 
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
    And I click the Cheque on delivery button
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight |
    |"Implant User"   |"102ability"   |"beans"     | "C2675"    | "CKC"      | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "ND"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  |

@C2676 @C2677
    Scenario Outline: Testing Cheque on Delivery for Depot User/Hub User   
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
    And I click the Cheque on delivery button
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password     |AccountCode| CustomerRef | Postcode   | Consignee | Address1     | Address2    | Town   | County   | DelService | Contact | Phone        | Pallet | Quantity | Weight |
    |"Depot User"     |"setup110"     |"beans"      |"test"     | "C2676"     | "D01"      | "LukeG"   |"TPN Avenue"  | "TPN Road"  |"Dublin"| "Dublin" | "ND"       | "LukeG" | "0123456789" | "Full" | "1"      | "150"  |
    |"Hub User"       |"setup100"     |"beans"      |"test"     | "C2677"     | "D01"      | "LukeG"   |"TPN Avenue"  | "TPN Road"  |"Dublin"| "Dublin" | "ND"       | "LukeG" | "0123456789" | "Full" | "1"      | "150"  |

@C2678
    Scenario Outline: Testing Pallet on Wrap for Implant User 
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
    And I click the Pallet and Wrap button
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight |
    |"Implant User"   |"102ability"   |"beans"     | "C2678"    | "CKC"      | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "ND"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  |

@C2679 @C2680
    Scenario Outline: Testing Pallet on Wrap for Depot User/Hub User   
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
    And I click the Pallet and Wrap button
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password     |AccountCode| CustomerRef | Postcode   | Consignee | Address1     | Address2    | Town   | County   | DelService | Contact | Phone        | Pallet | Quantity | Weight |
    |"Depot User"     |"setup110"     |"beans"      |"test"     | "C2679"     | "D01"      | "LukeG"   |"TPN Avenue"  | "TPN Road"  |"Dublin"| "Dublin" | "ND"       | "LukeG" | "0123456789" | "Full" | "1"      | "150"  |
    |"Hub User"       |"setup100"     |"beans"      |"test"     | "C2680"     | "D01"      | "LukeG"   |"TPN Avenue"  | "TPN Road"  |"Dublin"| "Dublin" | "ND"       | "LukeG" | "0123456789" | "Full" | "1"      | "150"  |

@C2681
    Scenario Outline: Testing Retail Delivery for Implant User 
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
    And I click the Retail Delivery button
    Then I click the Finish button
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1      | Address2   | Town  | County | DelService | Contact  | Phone        | Pallet | Quantity | Weight |
    |"Implant User"   |"102ability"   |"beans"     | "C2681"    | "CKC"      | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Cork"| "Cork" | "ND"       | "LukeG"  | "0123456789" | "Full" | "1"      | "150"  |

@C2682 @C2683
    Scenario Outline: Testing Retail Delivery for Depot User/Hub User   
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
    And I click the Retail Delivery button
    And I click the Finish button
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password     |AccountCode| CustomerRef | Postcode   | Consignee | Address1     | Address2    | Town   | County   | DelService | Contact | Phone        | Pallet | Quantity | Weight |
    |"Depot User"     |"setup110"     |"beans"      |"test"     | "C2682"     | "D01"      | "LukeG"   |"TPN Avenue"  | "TPN Road"  |"Dublin"| "Dublin" | "ND"       | "LukeG" | "0123456789" | "Full" | "1"      | "150"  |
    |"Hub User"       |"setup100"     |"beans"      |"test"     | "C2683"     | "D01"      | "LukeG"   |"TPN Avenue"  | "TPN Road"  |"Dublin"| "Dublin" | "ND"       | "LukeG" | "0123456789" | "Full" | "1"      | "150"  |