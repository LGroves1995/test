@ConnectRegression @ServicesIREPack
Feature: Test that TPN Connect allows different services for consignment entry for IRE users to UK
    As a user
    I want to be able to put on a consignment via TPN Connect


Background:
        Given I open the site "/" 

@IREUKImplantStandardServices @C2867 @C2870 @C2873 @C2876 @C3215 @C3218 @C3221 @C3224 @C3203 @C3206 @C3209 @C3212 @C3248 @C3251 @C3254 @C3257
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
    |"Implant User"   |"102Ability"   |"beans"    | "C2867"    | "RH11 0AA" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "AM"       | "LukeG" | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "RH11 0AA"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C2870"    | "PO18 0HB" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "AMTL"     | "LukeG" | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "PO18 0HB"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C2873"    | "B36 0EY"  | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "BKIN"     | "LukeG" | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "B36 0EY"        |
    |"Implant User"   |"102Ability"   |"beans"    | "C2876"    | "LS14 1BU" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "BKIT"     | "LukeG" | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "LS14 1BU"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C3215"    | "PO16 7GZ" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EC"       | "LukeG" | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "PO16 7GZ"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C3218"    | "SW1A 1AA" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "ECTL"     | "LukeG" | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "SW1A 1AA"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C3221"    | "GU14 7JU" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "ND"       | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "GU14 7JU"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C3224"    | "EC1A 1BB" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "NDTL"     | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "EC1A 1BB"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C3203"    | "CR2 6XH"  | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "PM"       | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "CR2 6XH"        |
    |"Implant User"   |"102Ability"   |"beans"    | "C3206"    | "NG5 2LL"  | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "PMTL"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "NG5 2LL"        |
    |"Implant User"   |"102Ability"   |"beans"    | "C3209"    | "E1"       | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "SAT"      | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "E1"             |
    |"Implant User"   |"102Ability"   |"beans"    | "C3212"    | "AB10 1AN" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "SATL"     | "LukeG" | "0123456789" |"0123456789"|"HH"    | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "AB10 1AN"       |
    |"Implant User"   |"102Ability"   |"beans"    | "C3248"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EBIT"     | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |
    |"Implant User"   |"102Ability"   |"beans"    | "C3251"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EBKI"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |
    |"Implant User"   |"102Ability"   |"beans"    | "C3254"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EEC"      | "LukeG" | "0123456789" |"0123456789"|"HH"    | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |
    |"Implant User"   |"102Ability"   |"beans"    | "C3257"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EECL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |"LukeG@LukeG.com"| "3214109000"  | "5525"       | "50"      | "60"        | "2"           | "Imp"         | "1234567"    | "5525"| "123"         | "DAP"     | "IE4862757G"| "GB989853334000" | "IM1"            |

@UKImplantTimedServices  @C2879 @2822 @C3239 @C3227 @C3230 @C3233
    Scenario Outline: Testing different Timed Services Entries for Implant Users       
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
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee  | Address1     | Address2   | Town        | County          | DelService | Contact  | Phone        | Phone2     | Pallet | Quantity | Weight | Time  |
    |"Implant User"   |"102Ability"    |"beans"    | "C2879"    | "SW1A 1AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "BKSL"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"14:00"|
    |"Implant User"   |"102Ability"    |"beans"    | "C2882"    | "GU14 7JU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "BSTL"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"15:00"|
    |"Implant User"   |"102Ability"    |"beans"    | "C3239"    | "NG5 2LL"  | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "SATT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"10:00"|
    |"Implant User"   |"102Ability"    |"beans"    | "C3227"    | "EC1A 1BB" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "STTL"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"13:00"|
    |"Implant User"   |"102Ability"    |"beans"    | "C3230"    | "CR2 6XH"  | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "TIME"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"12:00"|
    |"Implant User"   |"102Ability"    |"beans"    | "C3233"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "TMTL"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"11:00"|
   
@UKImplantDedicatedServices @C2885 @C2897 @C2910 @C2944 @C2959 @C2966
    Scenario Outline: Testing different Dedicated Day Services Entries for Implant Users       
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
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password   |CustomerRef | Postcode   | Consignee  | Address1     | Address2   | Town        | County          | DelService | Contact | Phone         | Phone2     | Pallet | Quantity | Weight | Day        |
    |"Implant User"   |"102Ability"    |"beans"    | "C2885"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDAM"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"102Ability"    |"beans"    | "C2897"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDAT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"102Ability"    |"beans"    | "C2910"    | "PO18 0HB" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDAY"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"102Ability"    |"beans"    | "C2944"    | "LS14 1BU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDPM"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"102Ability"    |"beans"    | "C2959"    | "GU14 7JU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDPT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"102Ability"    |"beans"    | "C2966"    | "SW1A 1AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTL"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|

@UKImplantDedicatedTimeServices @C2198 @C2923 @C2984 @C3002

    Scenario Outline: Testing different Dedicated Day Services Entries for Implant Users       
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
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee  | Address1     | Address2   | Town        | County          | DelService | Contact | Phone         | Phone2     | Pallet | Quantity | Weight | Day        | Time   |
    |"Implant User"   |"102Ability"    |"beans"     | "C2918"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDBS"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"23/12/2022"|"10:00" |
    |"Implant User"   |"102Ability"    |"beans"     | "C2923"    | "PO18 0HB" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDBT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"23/12/2022"|"11:00" |
    |"Implant User"   |"102Ability"    |"beans"     | "C2984"    | "LS14 1BU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTM"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"23/12/2022"|"12:00" |
    |"Implant User"   |"102Ability"    |"beans"     | "C3002"    | "GU14 7JU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|"13:00" |

@UKDepotStandardServices @C2868 @C2871 @C2874 @C2877 @C3216 @C3219 @C3222 @C3225 @C3204 @C3207 @C3210 @C3213 @C3249 @C3252 @C3255 @C3258
    Scenario Outline: Testing different standard Services Entries for Depot Users       
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
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password     |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Phone2       | Pallet | Quantity | Weight |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2868"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "AM"       | "LukeG" | "0123456789" | "0123456789" |"FF"   | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2871"     | "PO18 0HB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "AMTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"   | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2874"     | "B36 0EY"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BKIN"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2877"     | "PO16 7GZ" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BKIT"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |   
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3216"     | "SW1A 1AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EC"       | "LukeG" | "0123456789" | "0123456789" |"HH"   | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3219"     | "GU14 7JU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "ECTL"     | "LukeG" | "0123456789" | "0123456789" |"Full" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3222"     | "EC1A 1BB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "ND"       | "LukeG" | "0123456789" | "0123456789" |"Quar" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3225"     | "CR2 6XH"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "NDTL"     | "LukeG" | "0123456789" | "0123456789" |"Quar" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3204"     | "NG5 2LL"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "PM"       | "LukeG" | "0123456789" | "0123456789" |"FF"   | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3207"     | "E1"       | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "PMTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"   | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3210"     | "AB10 1AN" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "SAT"      | "LukeG" | "0123456789" | "0123456789" |"Full" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3213"     | "LS14 1BU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "SATL"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3249"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EBIT"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3252"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EBKI"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3255"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EEC"      | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3258"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EECL"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |

@UKDepotTimedServices @C2880 @C2880 @C3240 @C3228 @C3231 @C3234
    Scenario Outline: Testing different Timed Services Entries for Depot Users       
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
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Phone2       | Pallet | Quantity | Weight | Time  |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2880"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BKSL"     | "LukeG" | "0123456789" | "0123456789" |"FF"    | "1"      | "150"  |"14:00"|
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2883"     | "PO18 0HB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BSTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"    | "1"      | "150"  |"15:00"|
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3240"     | "B36 0EY"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "SATT"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"10:00"|
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3228"     | "PO16 7GZ" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "STTL"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"13:00"|
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3231"     | "SW1A 1AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "TIME"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"12:00"|
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C3234"     | "GU14 7JU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "TMTL"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"11:00"|

@UKDepotDedicatedServices @C2890 @C2904 @C2913 @C2946 @C2961 @C2967
    Scenario Outline: Testing different Dedicated Day Services Entries for Depot Users       
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
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Phone2       | Pallet | Quantity | Weight | Day        |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2890"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDAM"     | "LukeG" | "0123456789" | "0123456789" |"FF"    | "1"      | "150"  |"13/01/2023"|
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2904"     | "PO18 0HB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDAT"     | "LukeG" | "0123456789" | "0123456789" |"HH"    | "1"      | "150"  |"13/01/2023"|
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2913"     | "B36 0EY"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDAY"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"13/01/2023"|
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2946"     | "PO16 7GZ" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDPM"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"13/01/2023"|   
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2961"     | "SW1A 1AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDPT"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"13/01/2023"|
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"      | "C2967"     | "GU14 7JU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDTL"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"13/01/2023"|

@UKDepotDedicatedTimeServices @C2919 @C2924 @C2985 @C3003

    Scenario Outline: Testing different Dedicated Day Services Entries for Depot Users       
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
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode |CustomerRef | Postcode   | Consignee  | Address1     | Address2   | Town        | County          | DelService | Contact | Phone         | Phone2     | Pallet | Quantity | Weight | Day        | Time   |
    |"Depot" User"    |"051051SHAMEK" |"beans"     |"SAN"       |"C2919"     | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDBS"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"23/12/2022"|"10:00" |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"       |"C2924"     | "PO18 0HB" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDBT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"23/12/2022"|"11:00" |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"       |"C2985"     | "LS14 1BU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTM"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"23/12/2022"|"12:00" |
    |"Depot User"     |"051051SHAMEK" |"beans"     |"SAN"       |"C3003"     | "GU14 7JU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|"13:00" |

@UKHubStandardServices @C2869 @C2872 @C2875 @C2878 @C3217 @C3220 @C3223 @C3226 @C3205 @C3208 @C3211 @C3214 @C3250 @C3253 @C3256 @C3259
    
    Scenario Outline: Testing different standard Services Entries for Hub Users       
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
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password     |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Phone2       | Pallet | Quantity | Weight |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C2869"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "AM"       | "LukeG" | "0123456789" | "0123456789" |"FF"   | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C2872"     | "PO18 0HB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "AMTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"   | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C2875"     | "B36 0EY"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BKIN"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C2878"     | "PO16 7GZ" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BKIT"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |   
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C3217"     | "SW1A 1AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EC"       | "LukeG" | "0123456789" | "0123456789" |"HH"   | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C3220"     | "GU14 7JU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "ECTL"     | "LukeG" | "0123456789" | "0123456789" |"Full" | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C3223"     | "EC1A 1BB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "ND"       | "LukeG" | "0123456789" | "0123456789" |"Quar" | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C3226"     | "CR2 6XH"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "NDTL"     | "LukeG" | "0123456789" | "0123456789" |"Quar" | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C3205"     | "NG5 2LL"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "PM"       | "LukeG" | "0123456789" | "0123456789" |"FF"   | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C3208"     | "E1"       | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "PMTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"   | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C3211"     | "AB10 1AN" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "SAT"      | "LukeG" | "0123456789" | "0123456789" |"Full" | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C3214"     | "LS14 1BU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "SATL"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C3250"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EBIT"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C3253"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EBKI"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C3256"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EEC"      | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C3259"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EECL"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |

@UKHubTimedServices @C2881 @C2884 @C3241 @C3229 @C3232 @C3235
   
    Scenario Outline: Testing different Timed Services Entries for Hub Users       
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
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Phone2       | Pallet | Quantity | Weight | Time  |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"     | "C2881"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BKSL"     | "LukeG" | "0123456789" | "0123456789" |"FF"    | "1"      | "150"  |"14:00"|
    |"Hub User"       |"099phillipt"  |"beans"     |"test"     | "C2884"     | "PO18 0HB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BSTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"    | "1"      | "150"  |"15:00"|
    |"Hub User"       |"099phillipt"  |"beans"     |"test"     | "C3241"     | "B36 0EY"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "SATT"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"10:00"|
    |"Hub User"       |"099phillipt"  |"beans"     |"test"     | "C3229"     | "PO16 7GZ" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "STTL"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"13:00"|
    |"Hub User"       |"099phillipt"  |"beans"     |"test"     | "C3232"     | "SW1A 1AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "TIME"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"12:00"|
    |"Hub User"       |"099phillipt"  |"beans"     |"test"     | "C3235"     | "GU14 7JU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "TMTL"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"11:00"|

@UKHubDedicatedServices @C2893 @C2908 @C2914 @C2947 @C2962 @C2968
  
    Scenario Outline: Testing different Dedicated Day Services Entries for Hub Users       
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
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode | CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Phone2       | Pallet | Quantity | Weight | Day        |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C2893"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDAM"     | "LukeG" | "0123456789" | "0123456789" |"FF"    | "1"      | "150"  |"13/01/2023"|
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C2908"     | "PO18 0HB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDAT"     | "LukeG" | "0123456789" | "0123456789" |"HH"    | "1"      | "150"  |"13/01/2023"|
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C2914"     | "B36 0EY"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDAY"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"13/01/2023"|
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C2947"     | "PO16 7GZ" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDPM"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"13/01/2023"|   
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C2962"     | "SW1A 1AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDPT"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"13/01/2023"|
    |"Hub User"       |"099phillipt"  |"beans"     |"test"      | "C2968"     | "GU14 7JU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "DDTL"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"13/01/2023"|

@UKHubDedicatedTimeServices @C2919 @C2924 @C2985 @C3003

    Scenario Outline: Testing different Dedicated Day Services Entries for Hub Users       
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
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |AccountCode |CustomerRef | Postcode   | Consignee  | Address1     | Address2   | Town        | County          | DelService | Contact | Phone         | Phone2     | Pallet | Quantity | Weight | Day        | Time   |
    |"Hub" User"      |"099phillipt"  |"beans"     |"test"       |"C2922"     | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDBS"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"23/12/2022"|"10:00" |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"       |"C2925"     | "PO18 0HB" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDBT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"23/12/2022"|"11:00" |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"       |"C2986"     | "LS14 1BU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTM"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"23/12/2022"|"12:00" |
    |"Hub User"       |"099phillipt"  |"beans"     |"test"       |"C3004"     | "GU14 7JU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|"13:00" |

    Scenario Outline: Testing different Dedicated Day Services Entries for Hub Users       
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
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username   |Password    |AccountCode  |CustomerRef | Postcode | Consignee  | Address1     | Address2   | Town  | County | DelService | Contact  | Phone        | Phone2     | Pallet | Quantity | Weight | Day        | Time   |
    |"Depot" User"    |"setup100" |"beans"     |"test"       |"C2934"     | "CKC"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDBS"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"23/12/2022"|"10:00" |
    |"Depot User"     |"setup100" |"beans"     |"test"       |"C2938"     | "D01"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDBT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"23/12/2022"|"11:00" |
    |"Depot User"     |"setup100" |"beans"     |"test"       |"C2953"     | "WX"     | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDTM"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"23/12/2022"|"12:00" |
    |"Depot User"     |"setup100" |"beans"     |"test"       |"C2956"     | "CKC"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDTT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|"13:00" |