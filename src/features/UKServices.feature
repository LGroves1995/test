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
    |"Implant User"   |"051APLACE"    |"summer"    | "C3212"    | "AB10 1AN" | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "SATL"     | "LukeG" | "0123456789" |"0123456789" |"HH"   | "1"      | "150"  |  
    |"Implant User"   |"051APLACE"    |"summer"    | "C3245"    | "B24 0SG"  | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "RDCN"     | "LukeG" | "0123456789" |"0123456789" |"HH"   | "1"      | "150"  |  
    |"Implant User"   |"051APLACE"    |"summer"    | "C3248"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EBIT"     | "LukeG" | "0123456789" |"0123456789" |"HH"   | "1"      | "150"  |  
    |"Implant User"   |"051APLACE"    |"summer"    | "C3251"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EBKI"     | "LukeG" | "0123456789" |"0123456789" |"HH"   | "1"      | "150"  |  
    |"Implant User"   |"051APLACE"    |"summer"    | "C3254"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EEC"      | "LukeG" | "0123456789" |"0123456789" |"HH"   | "1"      | "150"  |  
    |"Implant User"   |"051APLACE"    |"summer"    | "C3257"    | "IM1"      | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "EECL"     | "LukeG" | "0123456789" |"0123456789" |"HH"   | "1"      | "150"  |  

@UKImplantTimedServices @C3239 @C3227 @C3230 @C3233
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
    |"Implant User"   |"051APLACE"    |"summer"    | "C2879"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "BKSL"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"14:00"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C2882"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "BSTL"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"15:00"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C3239"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "SATT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"10:00"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C3227"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "STTL"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"09:00"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C3230"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "TIME"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"12:00"|
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
    |"Implant User"   |"051APLACE"    |"summer"    | "C2897"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDAT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C2910"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDAY"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C2944"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDPM"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C2959"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDPT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C2966"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "DDTL"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"051APLACE"    |"summer"    | "C2966"    | "RH11 0AA" | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Birmingham"| "West Midlands" | "RDCD"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|
