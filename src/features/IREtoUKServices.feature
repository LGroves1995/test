@ConnectRegression @ServicesIREUKPack
Feature: Test that TPN Connect allows different services for consignment entry for IRE users to UK
    As a user
    I want to be able to put on a consignment via TPN Connect


Background:
        Given I open the site "/" 

@IREUKImplantStandardServices @C3044 @C3047 @C3050 @C3053 @C4072 @C4075 @C4078 @C4081 @C4084 @C4087 @C4090 @C4096 @C4117 @C4120 @C4123 @C4126
    Scenario Outline: Testing different standard Services Entries from IRE to UK for Implant Users       
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
    And I have entered <Phone2> as the Telephone Number 2
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
    |UserType         |Username       |Password   |CustomerRef | Postcode   | Consignee | Address1     | Address2   | Town        | County          | DelService | Contact | Phone        | Phone2     | Pallet | Quantity | Weight |CustomerEmail    | CommodityCode | InvoiceValue | NetWeight | GrossWeight | NumberPallets | DefermentType | AccountDAN   | FOB   | InvoiceNumber | IncoTerms | ExporterEORI| ImporterEORI     | ImporterPostcode |
    |"Implant User"   |"102Ability"   |"beans"    | "C3044"    | "RH11 0AA" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "AM"       | "LukeG" | "0123456789" |"0123456789"| "Full" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C3047"    | "PO18 0HB" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "AMTL"     | "LukeG" | "0123456789" |"0123456789"| "Half" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "PO18 0HB"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C3050"    | "B36 0EY"  | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "BKIN"     | "LukeG" | "0123456789" |"0123456789"| "HH"   | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "B36 0EY"        |
    |"Implant User"   |"102Ability"   |"beans"    | "C3053"    | "LS14 1BU" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "BKIT"     | "LukeG" | "0123456789" |"0123456789"| "FF"   | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "LS14 1BU"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C4072"    | "RH11 0AA" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EC"       | "LukeG" | "0123456789" |"0123456789"| "Full" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C4075"    | "SW1A 1AA" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "ECTL"     | "LukeG" | "0123456789" |"0123456789"| "Full" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "SW1A 1AA"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C4078"    | "GU14 7JU" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "ND"       | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "GU14 7JU"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C4081"    | "EC1A 1BB" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "NDTL"     | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "EC1A 1BB"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C4084"    | "CR2 6XH"  | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "PM"       | "LukeG" | "0123456789" |"0123456789"|"Full"  | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "CR2 6XH"        |
    |"Implant User"   |"102Ability"   |"beans"    | "C4087"    | "NG5 2LL"  | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "PMTL"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "NG5 2LL"        |
    |"Implant User"   |"102Ability"   |"beans"    | "C4090"    | "E1"       | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "SAT"      | "LukeG" | "0123456789" |"0123456789"|"FF"    | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "E1"             |
    |"Implant User"   |"102Ability"   |"beans"    | "C4096"    | "AB10 1AN" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "SATL"     | "LukeG" | "0123456789" |"0123456789"|"HH"    | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "AB10 1AN"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C4117"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EBIT"     | "LukeG" | "0123456789" |"0123456789"|"Full"  | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |
    |"Implant User"   |"102Ability"   |"beans"    | "C4120"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EBKI"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |
    |"Implant User"   |"102Ability"   |"beans"    | "C4123"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EEC"      | "LukeG" | "0123456789" |"0123456789"|"HH"    | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |
    |"Implant User"   |"102Ability"   |"beans"    | "C4126"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EECL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |

@IREUKImplantTimedServices @C4036 @C4039 @C4093 @C4099 @C4102 @C4105
    Scenario Outline: Testing different Timed Services Entries from IRE to UK for Implant Users       
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
    And I enter <Time> as my Dedicated Time
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have entered <Phone2> as the Telephone Number 2
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
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee  | Address1     | Address2   | Town        | County          | DelService | Contact  | Phone        | Phone2     | Pallet | Quantity | Weight | Time  |CustomerEmail    | CommodityCode | InvoiceValue | NetWeight | GrossWeight | NumberPallets | DefermentType | AccountDAN   | FOB   | InvoiceNumber | IncoTerms | ExporterEORI| ImporterEORI     | ImporterPostcode |
    |"Implant User"   |"102Ability"    |"beans"    | "C4036"    | "SW1A 1AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "BKSL"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "2"      | "150"  |"14:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "SW1A 1AA"       |
    |"Implant User"   |"102Ability"    |"beans"    | "C4039"    | "GU14 7JU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "BSTL"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "2"      | "150"  |"15:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "GU14 7JU"       |
    |"Implant User"   |"102Ability"    |"beans"    | "C4093"    | "NG5 2LL"  | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "SATT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "2"      | "150"  |"10:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "NG5 2LL"        |
    |"Implant User"   |"102Ability"    |"beans"    | "C4099"    | "EC1A 1BB" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "STTL"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "2"      | "150"  |"13:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "EC1A 1BB"       |
    |"Implant User"   |"102Ability"    |"beans"    | "C4102"    | "CR2 6XH"  | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "TIME"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "2"      | "150"  |"12:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "CR2 6XH"        |
    |"Implant User"   |"102Ability"    |"beans"    | "C4105"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "TMTL"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "2"      | "150"  |"11:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
   
@IREUKImplantDedicatedServices @C4042 @C4045 @C4048 @C4057 @C4060 @C4063
    Scenario Outline: Testing different Dedicated Day Services Entries from IRE to UK for Implant Users       
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
    And I enter <Day> as my Dedicated Day
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have entered <Phone2> as the Telephone Number 2
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
    |UserType         |Username        |Password   |CustomerRef | Postcode   | Consignee  | Address1     | Address2   | Town        | County          | DelService | Contact | Phone         | Phone2     | Pallet | Quantity | Weight | Day        |CustomerEmail    | CommodityCode | InvoiceValue | NetWeight | GrossWeight | NumberPallets | DefermentType | AccountDAN   | FOB   | InvoiceNumber | IncoTerms | ExporterEORI| ImporterEORI     | ImporterPostcode |
    |"Implant User"   |"102Ability"    |"beans"    | "C4042"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDAM"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "2"      | "150"  |"23/12/2022"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Implant User"   |"102Ability"    |"beans"    | "C4045"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDAT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "2"      | "150"  |"23/12/2022"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Implant User"   |"102Ability"    |"beans"    | "C4048"    | "PO18 0HB" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDAY"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "2"      | "150"  |"23/12/2022"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "PO18 0HB"       |
    |"Implant User"   |"102Ability"    |"beans"    | "C4057"    | "LS14 1BU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDPM"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "2"      | "150"  |"23/12/2022"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "LS14 1BU"       |
    |"Implant User"   |"102Ability"    |"beans"    | "C4060"    | "GU14 7JU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDPT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "2"      | "150"  |"23/12/2022"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "GU14 7JU"       |
    |"Implant User"   |"102Ability"    |"beans"    | "C4063"    | "SW1A 1AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTL"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "2"      | "150"  |"23/12/2022"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "SW1A 1AA"       |

@IREUKImplantDedicatedTimeServices @C4051 @C4054 @C4066 @C4069	

    Scenario Outline: Testing different Dedicated Day Services Entries from IRE to UK for Implant Users       
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
    And I enter <Day> as my Dedicated Day
    And I enter <Time> as my Dedicated Time
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have entered <Phone2> as the Telephone Number 2
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
    |UserType         |Username        |Password    |CustomerRef | Postcode   | Consignee  | Address1     | Address2   | Town        | County          | DelService | Contact | Phone         | Phone2     | Pallet | Quantity | Weight | Day        | Time   |CustomerEmail    | CommodityCode | InvoiceValue | NetWeight | GrossWeight | NumberPallets | DefermentType | AccountDAN   | FOB   | InvoiceNumber | IncoTerms | ExporterEORI| ImporterEORI     | ImporterPostcode |
    |"Implant User"   |"102Ability"    |"beans"     | "C4051"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDBS"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "2"      | "150"  |"23/12/2022"|"10:00" |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Implant User"   |"102Ability"    |"beans"     | "C4054"    | "PO18 0HB" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDBT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "2"      | "150"  |"23/12/2022"|"11:00" |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "PO18 0HB"       |
    |"Implant User"   |"102Ability"    |"beans"     | "C4066"    | "LS14 1BU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTM"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "2"      | "150"  |"23/12/2022"|"12:00" |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "LS14 1BU"       |
    |"Implant User"   |"102Ability"    |"beans"     | "C4069"    | "GU14 7JU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "2"      | "150"  |"23/12/2022"|"13:00" |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "GU14 7JU"       |

@IREUKDepotStandardServices @C3045 @C3048 @C3051 @C3054 @C4073 @C4076 @C4079 @C4082 @C4085 @C4088 @C4091 @C4097 @C4118 @C4121 @C4124 @C4127
    Scenario Outline: Testing different standard Services Entries from IRE to UK for Depot Users       
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
    And I have entered <Phone2> as the Telephone Number 2
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
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Phone2       | Pallet| Quantity | Weight |CustomerEmail    | CommodityCode | InvoiceValue | NetWeight | GrossWeight | NumberPallets | DefermentType | AccountDAN   | FOB   | InvoiceNumber | IncoTerms | ExporterEORI| ImporterEORI     | ImporterPostcode |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C3045"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "AM"       | "LukeG" | "0123456789" | "0123456789" |"FF"   | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C3048"     | "PO18 0HB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "AMTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"   | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "PO18 0HB"       |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C3051"     | "B36 0EY"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BKIN"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "B36 0EY"        |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C3054"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BKIT"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C4073"     | "SW1A 1AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EC"       | "LukeG" | "0123456789" | "0123456789" |"HH"   | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "SW1A 1AA"       |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C4076"     | "GU14 7JU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "ECTL"     | "LukeG" | "0123456789" | "0123456789" |"Full" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "GU14 7JU"       |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C4079"     | "EC1A 1BB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "ND"       | "LukeG" | "0123456789" | "0123456789" |"Quar" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "EC1A 1BB"       |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C4082"     | "CR2 6XH"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "NDTL"     | "LukeG" | "0123456789" | "0123456789" |"Quar" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "CR2 6XH"        |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C4085"     | "NG5 2LL"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "PM"       | "LukeG" | "0123456789" | "0123456789" |"FF"   | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "NG5 2LL"        |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C4088"     | "E1"       | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "PMTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"   | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "E1"             |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C4091"     | "AB10 1AN" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "SAT"      | "LukeG" | "0123456789" | "0123456789" |"Full" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "AB10 1AN"       |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C4097"     | "LS14 1BU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "SATL"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "LS14 1BU"       |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C4118"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EBIT"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C4121"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EBKI"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C4124"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EEC"      | "LukeG" | "0123456789" | "0123456789" |"Half" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |
    |"Depot User"     |"setup110"     |"beans"     |"tes"      | "C4127"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EECL"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |

@IREUKDepotTimedServices @C4037 @C4040 @C4094 @C4100 @C4103 @C4106
    Scenario Outline: Testing different Timed Services Entries from IRE to UK for Depot Users       
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
    And I enter <Time> as my Dedicated Time
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have entered <Phone2> as the Telephone Number 2
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
    |UserType         |Username   |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Phone2       | Pallet | Quantity | Weight | Time  |CustomerEmail    | CommodityCode | InvoiceValue | NetWeight | GrossWeight | NumberPallets | DefermentType | AccountDAN   | FOB   | InvoiceNumber | IncoTerms | ExporterEORI| ImporterEORI     | ImporterPostcode |
    |"Depot User"     |"setup110" |"beans"     |"tes"      | "C4037"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BKSL"     | "LukeG" | "0123456789" | "0123456789" |"FF"    | "2"      | "150"  |"14:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Depot User"     |"setup110" |"beans"     |"tes"      | "C4040"     | "PO18 0HB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BSTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"    | "2"      | "150"  |"15:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "PO18 0HB"       |
    |"Depot User"     |"setup110" |"beans"     |"tes"      | "C4094"     | "B36 0EY"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "SATT"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "2"      | "150"  |"10:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "B36 0EY"        |
    |"Depot User"     |"setup110" |"beans"     |"tes"      | "C4100"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "STTL"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "2"      | "150"  |"13:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Depot User"     |"setup110" |"beans"     |"tes"      | "C4103"     | "SW1A 1AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "TIME"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "2"      | "150"  |"12:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "SW1A 1AA"       |
    |"Depot User"     |"setup110" |"beans"     |"tes"      | "C4106"     | "GU14 7JU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "TMTL"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "2"      | "150"  |"11:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "GU14 7JU"       |

@IREUKDepotDedicatedServices @C4043 @C4046 @C4049 @C4058 @C4061 @C4064
    Scenario Outline: Testing different Dedicated Day Services Entries from IRE to UK for Depot Users       
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
    And I enter <Day> as my Dedicated Day
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have entered <Phone2> as the Telephone Number 2
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
    |UserType         |Username   |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Phone2       | Pallet | Quantity | Weight | Day        |CustomerEmail    | CommodityCode | InvoiceValue | NetWeight | GrossWeight | NumberPallets | DefermentType | AccountDAN   | FOB   | InvoiceNumber | IncoTerms | ExporterEORI| ImporterEORI     | ImporterPostcode |
    |"Depot User"     |"setup110" |"beans"     |"tes"      | "C4043"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDAM"     | "LukeG" | "0123456789" | "0123456789" |"FF"    | "2"      | "150"  |"13/01/2023"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Depot User"     |"setup110" |"beans"     |"tes"      | "C4046"     | "PO18 0HB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDAT"     | "LukeG" | "0123456789" | "0123456789" |"HH"    | "2"      | "150"  |"13/01/2023"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "PO18 0HB"       |
    |"Depot User"     |"setup110" |"beans"     |"tes"      | "C4049"     | "B36 0EY"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDAY"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "2"      | "150"  |"13/01/2023"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "B36 0EY"        |
    |"Depot User"     |"setup110" |"beans"     |"tes"      | "C4058"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDPM"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "2"      | "150"  |"13/01/2023"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Depot User"     |"setup110" |"beans"     |"tes"      | "C4061"     | "SW1A 1AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDPT"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "2"      | "150"  |"13/01/2023"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "SW1A 1AA"       |
    |"Depot User"     |"setup110" |"beans"     |"tes"      | "C4064"     | "GU14 7JU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDTL"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "2"      | "150"  |"13/01/2023"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "GU14 7JU"       |

@IREUKDepotDedicatedTimeServices @C4052 @C4055 @C4067 @C4070

    Scenario Outline: Testing different Dedicated Day Services from IRE to UK Entries for Depot Users       
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
    And I enter <Day> as my Dedicated Day
    And I enter <Time> as my Dedicated Time
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have entered <Phone2> as the Telephone Number 2
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
    |UserType         |Username   |Password    |AccountCode |CustomerRef | Postcode   | Consignee  | Address1     | Address2   | Town        | County          | DelService | Contact | Phone         | Phone2     | Pallet | Quantity | Weight | Day        | Time   |CustomerEmail    | CommodityCode | InvoiceValue | NetWeight | GrossWeight | NumberPallets | DefermentType | AccountDAN   | FOB   | InvoiceNumber | IncoTerms | ExporterEORI| ImporterEORI     | ImporterPostcode |
    |"Depot" User"    |"setup110" |"beans"     |"tes"       |"C4052"     | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDBS"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "2"      | "150"  |"23/12/2022"|"10:00" |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Depot User"     |"setup110" |"beans"     |"tes"       |"C4055"     | "PO18 0HB" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDBT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "2"      | "150"  |"23/12/2022"|"11:00" |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "PO18 0HB"       |
    |"Depot User"     |"setup110" |"beans"     |"tes"       |"C4067"     | "LS14 1BU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTM"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "2"      | "150"  |"23/12/2022"|"12:00" |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "LS14 1BU"       |
    |"Depot User"     |"setup110" |"beans"     |"tes"       |"C4070"     | "GU14 7JU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "2"      | "150"  |"23/12/2022"|"13:00" |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "GU14 7JU"       |

@IREUKHubStandardServices @C3046 @C3049 @C3052 @C3055 @C4074 @C4077 @C4080 @C4083 @C4086 @C4089 @C4092 @C4098 @C4119 @C4122 @C4125 @C4128
    
    Scenario Outline: Testing different standard Services Entries from IRE to UK for Hub Users       
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
    And I have entered <Phone2> as the Telephone Number 2
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
    |UserType         |Username   |Password     |AccountCode | CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Phone2       | Pallet| Quantity | Weight |CustomerEmail    | CommodityCode | InvoiceValue | NetWeight | GrossWeight | NumberPallets | DefermentType | AccountDAN   | FOB   | InvoiceNumber | IncoTerms | ExporterEORI| ImporterEORI     | ImporterPostcode |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C3046"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "AM"       | "LukeG" | "0123456789" | "0123456789" |"FF"   | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C3049"     | "PO18 0HB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "AMTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"   | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "PO18 0HB"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C3052"     | "B36 0EY"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BKIN"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "B36 0EY"        |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C3055"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BKIT"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4074"     | "SW1A 1AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EC"       | "LukeG" | "0123456789" | "0123456789" |"HH"   | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "SW1A 1AA"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4077"     | "GU14 7JU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "ECTL"     | "LukeG" | "0123456789" | "0123456789" |"Full" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "GU14 7JU"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4080"     | "EC1A 1BB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "ND"       | "LukeG" | "0123456789" | "0123456789" |"Quar" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "EC1A 1BB"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4083"     | "CR2 6XH"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "NDTL"     | "LukeG" | "0123456789" | "0123456789" |"Quar" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "CR2 6XH"        |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4086"     | "NG5 2LL"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "PM"       | "LukeG" | "0123456789" | "0123456789" |"FF"   | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "NG5 2LL"        |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4089"     | "E1"       | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "PMTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"   | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "E1"             |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4092"     | "AB10 1AN" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "SAT"      | "LukeG" | "0123456789" | "0123456789" |"Full" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "AB10 1AN"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4098"     | "LS14 1BU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "SATL"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "LS14 1BU"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4119"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EBIT"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4122"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EBKI"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4125"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EEC"      | "LukeG" | "0123456789" | "0123456789" |"Half" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4128"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EECL"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "2"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |

@IREUKHubTimedServices @C4038 @C4041 @C4095 @C4101 @C4104 @C4107
   
    Scenario Outline: Testing different Timed Services Entries from IRE to UK for Hub Users       
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
    And I enter <Time> as my Dedicated Time
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have entered <Phone2> as the Telephone Number 2
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
    |UserType         |Username    |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Phone2       | Pallet | Quantity | Weight | Time  |CustomerEmail    | CommodityCode | InvoiceValue | NetWeight | GrossWeight | NumberPallets | DefermentType | AccountDAN   | FOB   | InvoiceNumber | IncoTerms | ExporterEORI| ImporterEORI     | ImporterPostcode |
    |"Hub User"       |"setup100"  |"beans"     |"test"     | "C4038"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BKSL"     | "LukeG" | "0123456789" | "0123456789" |"FF"    | "2"      | "150"  |"14:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"     | "C4041"     | "PO18 0HB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BSTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"    | "2"      | "150"  |"15:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "PO18 0HB"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"     | "C4095"     | "B36 0EY"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "SATT"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "2"      | "150"  |"10:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "B36 0EY"        |
    |"Hub User"       |"setup100"  |"beans"     |"test"     | "C4101"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "STTL"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "2"      | "150"  |"13:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"     | "C4104"     | "SW1A 1AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "TIME"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "2"      | "150"  |"12:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "SW1A 1AA"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"     | "C4107"     | "GU14 7JU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "TMTL"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "2"      | "150"  |"11:00"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "GU14 7JU"       |

@IREUKHubDedicatedServices  @C4044 @C4047 @C4050 @C4059 @C4062 @C4065
  
    Scenario Outline: Testing different Dedicated Day Services Entries from IRE to UK for Hub Users       
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
    And I enter <Day> as my Dedicated Day
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have entered <Phone2> as the Telephone Number 2
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
    |UserType         |Username    |Password    |AccountCode | CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Phone2       | Pallet | Quantity | Weight | Day        |CustomerEmail    | CommodityCode | InvoiceValue | NetWeight | GrossWeight | NumberPallets | DefermentType | AccountDAN   | FOB   | InvoiceNumber | IncoTerms | ExporterEORI| ImporterEORI     | ImporterPostcode |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4044"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDAM"     | "LukeG" | "0123456789" | "0123456789" |"FF"    | "2"      | "150"  |"13/01/2023"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4047"     | "PO18 0HB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDAT"     | "LukeG" | "0123456789" | "0123456789" |"HH"    | "2"      | "150"  |"13/01/2023"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "PO18 0HB"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4050"     | "B36 0EY"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDAY"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "2"      | "150"  |"13/01/2023"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "B36 0EY"        |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4059"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDPM"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "2"      | "150"  |"13/01/2023"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4062"     | "SW1A 1AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDPT"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "2"      | "150"  |"13/01/2023"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "SW1A 1AA"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"      | "C4065"     | "GU14 7JU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDTL"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "2"      | "150"  |"13/01/2023"|"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "GU14 7JU"       |

@IREUKHubDedicatedTimeServices @C4053 @C4056 @C4068 @C4071

    Scenario Outline: Testing different Dedicated Day Services Entries from IRE to UK for Hub Users       
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
    And I enter <Day> as my Dedicated Day
    And I enter <Time> as my Dedicated Time
    And I have entered <Contact> as the Contact
    And I have entered <Phone> as the Telephone Number
    And I have entered <Phone2> as the Telephone Number 2
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
    |UserType         |Username    |Password    |AccountCode  |CustomerRef | Postcode   | Consignee  | Address1     | Address2   | Town        | County          | DelService | Contact | Phone         | Phone2     | Pallet | Quantity | Weight | Day        | Time   |CustomerEmail    | CommodityCode | InvoiceValue | NetWeight | GrossWeight | NumberPallets | DefermentType | AccountDAN   | FOB   | InvoiceNumber | IncoTerms | ExporterEORI| ImporterEORI     | ImporterPostcode |
    |"Hub" User"      |"setup100"  |"beans"     |"test"       |"C4053"     | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDBS"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "2"      | "150"  |"23/12/2022"|"10:00" |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"       |"C4056"     | "PO18 0HB" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDBT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "2"      | "150"  |"23/12/2022"|"11:00" |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "PO18 0HB"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"       |"C4068"     | "LS14 1BU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTM"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "2"      | "150"  |"23/12/2022"|"12:00" |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "LS14 1BU"       |
    |"Hub User"       |"setup100"  |"beans"     |"test"       |"C4071"     | "GU14 7JU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "2"      | "150"  |"23/12/2022"|"13:00" |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "GU14 7JU"       |
