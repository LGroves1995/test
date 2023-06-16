@ConnectRegression @ServicesIREPack
Feature: Test that TPN Connect allows different services for consignment entry works for IRE users
    As a user
    I want to be able to put on a consignment via TPN Connect


Background:
        Given I open the site "/" 

@IREImplantStandardServices @C2886 @C2889 @C2894 @C2898 @C2901 @C2905 @C2957 @C2963 @C2969 @C2972 @C2975 @C2978 @C2981 @C2987 @C2990 @C2993 @C2996 @C2999 @C3005 @C3008 @C3011 @C3020 @C3023 @C3515 @C3518
   
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
    |UserType         |Username        |Password      |CustomerRef | Postcode | Consignee | Address1     | Address2   | Town  | County | DelService | Contact | Phone        | Phone2     | Pallet | Quantity | Weight |
    |"Implant User"   |"102Ability"    |"magazine"    | "C2886"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "AM"       | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |
    |"Implant User"   |"102Ability"    |"magazine"    | "C2889"    | "WX"     | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "AMTL"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |
    |"Implant User"   |"102Ability"    |"magazine"    | "C2894"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "B4"       | "LukeG" | "0123456789" |"0123456789"|"HH"    | "1"      | "150"  |
    |"Implant User"   |"102Ability"    |"magazine"    | "C2898"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "B4TL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |
    |"Implant User"   |"102Ability"    |"magazine"    | "C2901"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "BKIN"     | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |
    |"Implant User"   |"102Ability"    |"magazine"    | "C2905"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "BKIT"     | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |
    |"Implant User"   |"102Ability"    |"magazine"    | "C2957"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EBIT"     | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "150"  |
    |"Implant User"   |"102Ability"    |"magazine"    | "C2963"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EBKI"     | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "150"  |
    |"Implant User"   |"102Ability"    |"magazine"    | "C2969"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EC"       | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |
    |"Implant User"   |"102Ability"    |"magazine"    | "C2972"    | "WX"     | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "ECHD"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |
    |"Implant User"   |"102Ability"    |"magazine"    | "C2975"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "ECHL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |
    |"Implant User"   |"102Ability"    |"magazine"    | "C2978"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "ECTL"     | "LukeG" | "0123456789" |"0123456789"|"HH"    | "1"      | "150"  |  
    |"Implant User"   |"102Ability"    |"magazine"    | "C2981"    | "WX"     | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EEC"      | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "25"   |  
    |"Implant User"   |"102Ability"    |"magazine"    | "C2987"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EECL"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |  
    |"Implant User"   |"102Ability"    |"magazine"    | "C2990"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "FW"       | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "25"   |  
    |"Implant User"   |"102Ability"    |"magazine"    | "C2993"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "ND"       | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |  
    |"Implant User"   |"102Ability"    |"magazine"    | "C2996"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "NDHD"     | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |  
    |"Implant User"   |"102Ability"    |"magazine"    | "C2999"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "NDHL"     | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "150"  |  
    |"Implant User"   |"102Ability"    |"magazine"    | "C3005"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "NDTL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |  
    |"Implant User"   |"102Ability"    |"magazine"    | "C3008"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "PM"       | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "25"   |  
    |"Implant User"   |"102Ability"    |"magazine"    | "C3011"    | "WX"     | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "PMTL"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |  
    |"Implant User"   |"102Ability"    |"magazine"    | "C3020"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "SAT"      | "LukeG" | "0123456789" |"0123456789"|"HH"    | "1"      | "150"  |  
    |"Implant User"   |"102Ability"    |"magazine"    | "C3023"    | "WX"     | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "SATL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "25"   |  
    |"Implant User"   |"102Ability"    |"magazine"    | "C3515"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "SSSS"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |  
    |"Implant User"   |"102Ability"    |"magazine"    | "C3518"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "SSTL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |  

@IREImplantTimedServices  @C2909 @C2915 @C3521 @C3026 @C3029 @C3032
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
    |UserType         |Username        |Password      |CustomerRef | Postcode| Consignee  | Address1     | Address2   | Town  |County  | DelService | Contact  | Phone        | Phone2     | Pallet | Quantity | Weight | Time  |
    |"Implant User"   |"102Ability"    |"magazine"    | "C2909"    | "CKC"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "BKSL"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"14:00"|
    |"Implant User"   |"102Ability"    |"magazine"    | "C2915"    | "D01"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "BSTL"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"15:00"|
    |"Implant User"   |"102Ability"    |"magazine"    | "C3521"    | "WX"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "SATT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"10:00"|
    |"Implant User"   |"102Ability"    |"magazine"    | "C3026"    | "CKC"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "STTL"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"13:00"|
    |"Implant User"   |"102Ability"    |"magazine"    | "C3029"    | "D01"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "TIME"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"12:00"|
    |"Implant User"   |"102Ability"    |"magazine"    | "C3032"    | "WX"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "TMTL"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"11:00"|
   
@IREImplantDedicatedServices @C2920 @C2927 @C2930 @C2939 @C2942 @C2948
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
    |UserType         |Username        |Password      |CustomerRef | Postcode| Consignee  | Address1     | Address2   | Town  | County | DelService | Contact | Phone         | Phone2     | Pallet | Quantity | Weight | Day        |
    |"Implant User"   |"102Ability"    |"magazine"    | "C2920"    | "CKC"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDAM"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"102Ability"    |"magazine"    | "C2927"    | "D01"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDAT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"102Ability"    |"magazine"    | "C2930"    | "WX"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDAY"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"102Ability"    |"magazine"    | "C2939"    | "CKC"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDPM"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"102Ability"    |"magazine"    | "C2942"    | "D01"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDPT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|
    |"Implant User"   |"102Ability"    |"magazine"    | "C2948"    | "WX"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDTL"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|

@IREImplantDedicatedTimeServices @C2933 @C2936 @C2951 @C2954

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
    |UserType         |Username        |Password       |CustomerRef | Postcode| Consignee  | Address1     | Address2   | Town  | County | DelService | Contact  | Phone        | Phone2     | Pallet | Quantity | Weight | Day        | Time   |
    |"Implant User"   |"102Ability"    |"magazine"     | "C2933"    | "CKC"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDBS"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"23/12/2022"|"10:00" |
    |"Implant User"   |"102Ability"    |"magazine"     | "C2936"    | "D01"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDBT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"23/12/2022"|"11:00" |
    |"Implant User"   |"102Ability"    |"magazine"     | "C2951"    | "WX"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDTM"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"23/12/2022"|"12:00" |
    |"Implant User"   |"102Ability"    |"magazine"     | "C2954"    | "CKC"   | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDTT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|"13:00" |

@IREDepotStandardServices @C2887 @C2891 @C2895 @C2899 @C2902 @C2906 @C2958 @C2964 @C2970 @C2973 @C2976 @C2979 @C2982 @C2988 @C2991 @C2994 @C2997 @C3000 @C3006 @C3009 @C3012 @C3021 @C3024 @C3516 @C3519
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
    |UserType       |Username      |Password   |CustomerRef | Postcode | Consignee | Address1     | Address2   | Town  | County | DelService | Contact | Phone        | Phone2     | Pallet | Quantity | Weight | AccountCode | 
    |"Depot User"   |"setup110"    |"magazine"    | "C2887"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "AM"       | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2891"    | "WX"     | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "AMTL"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2895"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "B4"       | "LukeG" | "0123456789" |"0123456789"|"HH"    | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2899"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "B4TL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2902"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "BKIN"     | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2906"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "BKIT"     | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2958"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EBIT"     | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2964"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EBKI"     | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2970"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EC"       | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2973"    | "WX"     | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "ECHD"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2976"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "ECHL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2979"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "ECTL"     | "LukeG" | "0123456789" |"0123456789"|"HH"    | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2982"    | "WX"     | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EEC"      | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "25"   |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2988"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EECL"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2991"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "FWD"      | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "25"   |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2994"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "ND"       | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C2997"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "NDHD"     | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C3000"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "NDHL"     | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C3006"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "NDTL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |"test"       |  
    |"Depot User"   |"setup110"    |"magazine"    | "C3009"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "PM"       | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "25"   |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C3012"    | "WX"     | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "PMTL"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C3021"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "SAT"      | "LukeG" | "0123456789" |"0123456789"|"HH"    | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C3024"    | "WX"     | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "SATL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "25"   |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C3516"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "SSSS"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |"test"       |
    |"Depot User"   |"setup110"    |"magazine"    | "C3519"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "SSTL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |"test"       |

@IREDepotTimedServices @C2911 @C2916 @C3522 @C3027 @C3030 @C3033
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
    |UserType         |Username   |Password       |AccountCode| CustomerRef | Postcode| Consignee | Address1      | Address2    | Town  | County | DelService | Contact | Phone        | Phone2       | Pallet | Quantity | Weight | Time  | 
    |"Depot User"     |"setup110" |"magazine"     |"test"      | "C2911"    | "CKC"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "BKSL"     | "LukeG" | "0123456789" | "0123456789" |"FF"    | "1"      | "150"  |"14:00"|
    |"Depot User"     |"setup110" |"magazine"     |"test"      | "C2916"    | "D01"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "BSTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"    | "1"      | "150"  |"15:00"|
    |"Depot User"     |"setup110" |"magazine"     |"test"      | "C3522"    | "WX"    | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "SATT"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"10:00"|
    |"Depot User"     |"setup110" |"magazine"     |"test"      | "C3027"    | "CKC"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "STTL"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"13:00"|
    |"Depot User"     |"setup110" |"magazine"     |"test"      | "C3030"    | "D01"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "TIME"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"12:00"|
    |"Depot User"     |"setup110" |"magazine"     |"test"      | "C3033"    | "WX"    | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "TMTL"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"11:00"|

@IREDepotDedicatedServices @C2921 @C2928 @C2931 @C2940 @C2943 @C2949
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
    |UserType         |Username   |Password       |AccountCode | CustomerRef | Postcode| Consignee | Address1      | Address2    | Town  | County | DelService | Contact | Phone        | Phone2       | Pallet | Quantity | Weight | Day        |
    |"Depot User"     |"setup110" |"magazine"     |"test"      | "C2921"     | "CKC"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "DDAM"     | "LukeG" | "0123456789" | "0123456789" |"FF"    | "1"      | "150"  |"13/01/2023"|
    |"Depot User"     |"setup110" |"magazine"     |"test"      | "C2928"     | "D01"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "DDAT"     | "LukeG" | "0123456789" | "0123456789" |"HH"    | "1"      | "150"  |"13/01/2023"|
    |"Depot User"     |"setup110" |"magazine"     |"test"      | "C2931"     | "WX"    | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "DDAY"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"13/01/2023"|
    |"Depot User"     |"setup110" |"magazine"     |"test"      | "C2940"     | "CKC"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "DDPM"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"13/01/2023"|   
    |"Depot User"     |"setup110" |"magazine"     |"test"      | "C2943"     | "D01"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "DDPT"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"13/01/2023"|
    |"Depot User"     |"setup110" |"magazine"     |"test"      | "C2949"     | "WX"    | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "DDTL"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"13/01/2023"|

@IREDepotDedicatedTimeServices @C2933 @C2937 @C2952 @C2955

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
    |UserType         |Username   |Password    |AccountCode  |CustomerRef | Postcode | Consignee  | Address1     | Address2   | Town  | County | DelService | Contact  | Phone        | Phone2     | Pallet | Quantity | Weight | Day        | Time   |
    |"Depot" User"    |"setup110" |"magazine"     |"test"       |"C2933"     | "CKC"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDBS"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"23/12/2022"|"10:00" |
    |"Depot User"     |"setup110" |"magazine"     |"test"       |"C2937"     | "D01"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDBT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"23/12/2022"|"11:00" |
    |"Depot User"     |"setup110" |"magazine"     |"test"       |"C2952"     | "WX"     | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDTM"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"23/12/2022"|"12:00" |
    |"Depot User"     |"setup110" |"magazine"     |"test"       |"C2955"     | "CKC"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDTT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|"13:00" |

@IREHubStandardServices @C2888 @C2892 @C2896 @C2900 @C2903 @C2907 @C2959 @C2965 @C2971 @C2974 @C2977 @C2980 @C2983 @C2989 @C2992 @C2995 @C2998 @C3001 @C3007 @C3010 @C3013 @C3022 @C3025 @C3517 @C3520
    
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
    |UserType       |Username          |Password      |CustomerRef | Postcode | Consignee | Address1     | Address2   | Town  | County | DelService | Contact | Phone        | Phone2     | Pallet | Quantity | Weight | AccountCode | 
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2888"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "AM"       | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2892"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "AMTL"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2896"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "B4"       | "LukeG" | "0123456789" |"0123456789"|"HH"    | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2900"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "B4TL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2903"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "BKIN"     | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2907"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "BKIT"     | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2959"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EBIT"     | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2965"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EBKI"     | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2971"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EC"       | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2974"    | "WX"     | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "ECHD"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2977"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "ECHL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2980"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "ECTL"     | "LukeG" | "0123456789" |"0123456789"|"HH"    | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2983"    | "WX"     | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EEC"      | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "25"   |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2989"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "EECL"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2992"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "FW"       | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "25"   |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2995"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "ND"       | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C2998"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "NDHD"     | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C3001"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "NDHL"     | "LukeG" | "0123456789" |"0123456789"|"Quar"  | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C3007"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "NDTL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |"test"       |  
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C3010"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "PM"       | "LukeG" | "0123456789" |"0123456789"|"Full"  | "1"      | "25"   |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C3013"    | "WX"     | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "PMTL"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C3022"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "SAT"      | "LukeG" | "0123456789" |"0123456789"|"HH"    | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C3025"    | "WX"     | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "SATL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "25"   |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C3517"    | "CKC"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "SSSS"     | "LukeG" | "0123456789" |"0123456789"|"Half"  | "1"      | "150"  |"test"       |
    |"Hub User"     |"100CarolineM"    |"magazine"    | "C3520"    | "D01"    | "LukeG"   |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "SSTL"     | "LukeG" | "0123456789" |"0123456789"|"FF"    | "1"      | "150"  |"test"       |

@IREHubTimedServices @C2912 @C2917 @C3523 @C3028 @C3031 @C3034
   
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
    |UserType         |Username       |Password       |AccountCode| CustomerRef | Postcode| Consignee | Address1      | Address2    | Town  | County | DelService | Contact | Phone        | Phone2       | Pallet | Quantity | Weight | Time  | 
    |"Hub User"       |"100CarolineM" |"magazine"     |"test"      | "C2912"    | "CKC"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "BKSL"     | "LukeG" | "0123456789" | "0123456789" |"FF"    | "1"      | "150"  |"14:00"|
    |"Hub User"       |"100CarolineM" |"magazine"     |"test"      | "C2917"    | "D01"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "BSTL"     | "LukeG" | "0123456789" | "0123456789" |"HH"    | "1"      | "150"  |"15:00"|
    |"Hub User"       |"100CarolineM" |"magazine"     |"test"      | "C3523"    | "WX"    | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "SATT"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"10:00"|
    |"Hub User"       |"100CarolineM" |"magazine"     |"test"      | "C3028"    | "CKC"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "STTL"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"13:00"|
    |"Hub User"       |"100CarolineM" |"magazine"     |"test"      | "C3031"    | "D01"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "TIME"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"12:00"|
    |"Hub User"       |"100CarolineM" |"magazine"     |"test"      | "C3034"    | "WX"    | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "TMTL"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"11:00"|

@IREHubDedicatedServices @C2922 @C2929 @C2932 @C2941 @C2944 @C2950
    
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
    |UserType         |Username       |Password       |AccountCode | CustomerRef | Postcode| Consignee | Address1      | Address2    | Town | County | DelService | Contact | Phone        | Phone2       | Pallet | Quantity | Weight | Day        |
    |"Hub User"       |"100CarolineM" |"magazine"     |"test"      | "C2922"     | "CKC"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "DDAM"     | "LukeG" | "0123456789" | "0123456789" |"FF"    | "1"      | "150"  |"13/01/2023"|
    |"Hub User"       |"100CarolineM" |"magazine"     |"test"      | "C2929"     | "D01"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "DDAT"     | "LukeG" | "0123456789" | "0123456789" |"HH"    | "1"      | "150"  |"13/01/2023"|
    |"Hub User"       |"100CarolineM" |"magazine"     |"test"      | "C2932"     | "WX"    | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "DDAY"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"13/01/2023"|
    |"Hub User"       |"100CarolineM" |"magazine"     |"test"      | "C2941"     | "CKC"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "DDPM"     | "LukeG" | "0123456789" | "0123456789" |"Half"  | "1"      | "150"  |"13/01/2023"|   
    |"Hub User"       |"100CarolineM" |"magazine"     |"test"      | "C2944"     | "D01"   | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "DDPT"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"13/01/2023"|
    |"Hub User"       |"100CarolineM" |"magazine"     |"test"      | "C2950"     | "WX"    | "LukeG"   |"TPN Avenue"   | "TPN Road"  | "Test"| "Test" | "DDTL"     | "LukeG" | "0123456789" | "0123456789" |"Full"  | "1"      | "150"  |"13/01/2023"|

@IREHubDedicatedTimeServices @C2934 @C2938 @C2953 @C2956

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
    |UserType         |Username       |Password    |AccountCode  |CustomerRef | Postcode | Consignee  | Address1     | Address2   | Town  | County | DelService | Contact  | Phone        | Phone2     | Pallet | Quantity | Weight | Day        | Time   |
    |"Depot" User"    |"100CarolineM" |"magazine"     |"test"       |"C2934"     | "CKC"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDBS"     | "LukeG"  | "0123456789" |"0123456789"| "Full" | "1"      | "150"  |"23/12/2022"|"10:00" |
    |"Depot User"     |"100CarolineM" |"magazine"     |"test"       |"C2938"     | "D01"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDBT"     | "LukeG"  | "0123456789" |"0123456789"| "Half" | "1"      | "150"  |"23/12/2022"|"11:00" |
    |"Depot User"     |"100CarolineM" |"magazine"     |"test"       |"C2953"     | "WX"     | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDTM"     | "LukeG"  | "0123456789" |"0123456789"| "HH"   | "1"      | "150"  |"23/12/2022"|"12:00" |
    |"Depot User"     |"100CarolineM" |"magazine"     |"test"       |"C2956"     | "CKC"    | "LukeG"    |"TPN Avenue"  | "TPN Road" | "Test"| "Test" | "DDTT"     | "LukeG"  | "0123456789" |"0123456789"| "FF"   | "1"      | "150"  |"23/12/2022"|"13:00" |