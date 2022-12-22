@ConnectRegression @ServicesUKPack
Feature: Test that TPN Connect allows different services for consignment entry works for UK users
    As a user
    I want to be able to put on a consignment via TPN Connect


Background:
        Given I open the site "/" 

@UKImplantStandardServices @C2867 @C2870 @C2873 @C2876 @C3215 @C3218 @C3221 @C3224 @C3203 @C3206 @C3209 @C3212 @C3248 @C3251 @C3254 @C3257
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
    And I see a success message
    Then I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee | Address1     | Address2   | Town        | County          | DelService | Contact | Phone        | Phone2     | Pallet | Quantity | Weight |
    |"Implant User"   |"051ADDEX"     |"summer"    | "C2867"    | "RH11 0AA" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "AM"       | "LukeG" | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"summer"    | "C2870"    | "PO18 0HB" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "AMTL"     | "LukeG" | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"summer"    | "C2873"    | "B36 0EY"  | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "BKIN"     | "LukeG" | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"summer"    | "C2876"    | "LS14 1BU" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "BKIT"     | "LukeG" | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"summer"    | "C3215"    | "PO16 7GZ" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EC"       | "LukeG" | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"summer"    | "C3218"    | "SW1A 1AA" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "ECTL"     | "LukeG" | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"summer"    | "C3221"    | "GU14 7JU" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "ND"       | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"summer"    | "C3224"    | "EC1A 1BB" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "NDTL"     | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"summer"    | "C3203"    | "CR2 6XH"  | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "PM"       | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"summer"    | "C3206"    | "NG5 2LL"  | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "PMTL"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"summer"    | "C3209"    | "E1"       | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "SAT"      | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |
    |"Implant User"   |"051APLACE"    |"summer"    | "C3212"    | "AB10 1AN" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "SATL"     | "LukeG" | "0123456789" |"0123456789"|"HH"    | "1"      | "150"  |  
    |"Implant User"   |"051APLACE"    |"summer"    | "C3248"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EBIT"     | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |  
    |"Implant User"   |"051APLACE"    |"summer"    | "C3251"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EBKI"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |  
    |"Implant User"   |"051APLACE"    |"summer"    | "C3254"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EEC"      | "LukeG" | "0123456789" |"0123456789"|"HH"    | "1"      | "150"  |  
    |"Implant User"   |"051APLACE"    |"summer"    | "C3257"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EECL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |  

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
    |"Implant User"   |"051APLACE"    |"summer"    | "C2879"    | "SW1A 1AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "BKSL"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"14:00"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C2882"    | "GU14 7JU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "BSTL"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"15:00"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C3239"    | "NG5 2LL"  | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "SATT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"10:00"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C3227"    | "EC1A 1BB" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "STTL"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"13:00"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C3230"    | "CR2 6XH"  | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "TIME"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"12:00"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C3233"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "TMTL"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"11:00"|
   
@UKImplantDedicatedDayServices @C2885 @C2897 @C2910 @C2944 @C2959 @C2966
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
    |UserType         |Username       |Password    |CustomerRef | Postcode   | Consignee  | Address1     | Address2   | Town        | County          | DelService | Contact | Phone         | Phone2     | Pallet | Quantity | Weight | Day        |
    |"Implant User"   |"051APLACE"    |"summer"    | "C2885"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDAM"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C2897"    | "AB10 1AN" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDAT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C2910"    | "PO18 0HB" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDAY"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C2944"    | "LS14 1BU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDPM"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C2959"    | "GU14 7JU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDPT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C2966"    | "SW1A 1AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTL"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|

@UKImplantDedicatedDayTimeServices @C2198 @C2923 @C2984 @C3002

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
    |"Implant User"   |"051APLACE"    |"summer"    | "C2918"    | "AB10 1AN" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDBS"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"23/12/2022"|"10:00" |
    |"Implant User"   |"051APLACE"    |"summer"    | "C2923"    | "PO18 0HB" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDBT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"23/12/2022"|"11:00" |
    |"Implant User"   |"051APLACE"    |"summer"    | "C2984"    | "LS14 1BU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTM"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"23/12/2022"|"12:00" |
    |"Implant User"   |"051APLACE"    |"summer"    | "C3002"    | "GU14 7JU" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|"13:00" |

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
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C2868"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "AM"       | "LukeG" | "0123456789" | "0123456789" |"FF"   | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C2871"     | "PO18 0HB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "AMTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"   | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C2874"     | "B36 0EY"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BKIN"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C2877"     | "PO16 7GZ" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BKIT"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |   
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C3216"     | "SW1A 1AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EC"       | "LukeG" | "0123456789" | "0123456789" |"HH"   | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C3219"     | "GU14 7JU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "ECTL"     | "LukeG" | "0123456789" | "0123456789" |"Full" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C3222"     | "EC1A 1BB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "ND"       | "LukeG" | "0123456789" | "0123456789" |"Quar" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C3225"     | "CR2 6XH"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "NDTL"     | "LukeG" | "0123456789" | "0123456789" |"Quar" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C3204"     | "NG5 2LL"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "PM"       | "LukeG" | "0123456789" | "0123456789" |"FF"   | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C3207"     | "E1"       | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "PMTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"   | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C3210"     | "AB10 1AN" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "SAT"      | "LukeG" | "0123456789" | "0123456789" |"Full" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C3213"     | "LS14 1BU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "SATL"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C3249"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EBIT"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C3252"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EBKI"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C3255"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EEC"      | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C3258"     | "IM1"      | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "EECL"     | "LukeG" | "0123456789" | "0123456789" |"Half" | "1"      | "150"  |

@UKDepotTimedServices @C2879 @2822 @C3239 @C3227 @C3230 @C3233
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
    |UserType         |Username       |Password     |AccountCode| CustomerRef | Postcode   | Consignee | Address1      | Address2    | Town        | County          | DelService | Contact | Phone        | Phone2       | Pallet | Quantity | Weight |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C2868"     | "RH11 0AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BKSL"     | "LukeG" | "0123456789" | "0123456789" |"FF"    | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C2871"     | "PO18 0HB" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "BSTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"    | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C2874"     | "B36 0EY"  | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "SATT"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C2877"     | "PO16 7GZ" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "STTL"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |   
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C3216"     | "SW1A 1AA" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "TIME"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |
    |"Depot User"     |"051051SHAMEK" |"summer"     |"SAN"      | "C3219"     | "GU14 7JU" | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Birmingham"| "West Midlands" | "TMTL"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |

