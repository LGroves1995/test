@ConnectRegression @UKCollections
Feature: Test that TPN Connect allows different collection requests for UK users
    As a user
    I want to be able to put on a collection via TPN Connect


Background:
        Given I open the site "/" 

@C2324
    Scenario Outline: Testing Standard Collection Entry for Implant User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on collection request
    And I have set the Collection Customer Ref as <CCustomerRef>
    And I have set the Collection Postcode as <CPostcode>
    And I have set the Consignor as <Consignor>
    And I have set the Collection Address 1 as <CAddress1>
    And I have set the Collection Address 2  as <CAddress2>
    And I have set the Collection Town as <CTown>
    And I have set the Collection County as <CCounty>
    And I have set the Collection Service as <CService>
    And I have set the Collection Contact as <CContact>
    And I have set the Collection Phone 1 as <CPhone1>
    And I have set the Collection Phone 2 as <CPhone2>
    And I have set the Collection Email as <CEmail>
    And I have set the CR Delivery Postcode as <CDPostcode>
    And I have set the CR Consignee as <CConsignee>
    And I have set the CR Delivery Address 1 as <CDAddress1>
    And I have set the CR Delivery Address 2 as <CDAddress2>
    And I have set the CR Delivery Town as <CDTown>
    And I have set the CR Delivery County as <CDCounty>
    And I have set the CR Delivery Service as <CDService>
    And I have set the CR Delivery Contact as <CDContact>
    And I have set the CR Delivery Phone 1 as <CDPhone1>
    And I have set the CR Delivery Phone 2 as <CDPhone2>
    And I have set the CR Delivery Email as <CDEmail>
    And I have set the CR Pallet Type as <CPallet>
    And I have set the CR Quantity as <CQuantity>
    And I have set the CR Weight as <CWeight>
    And I have clicked the Collection Finish
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight| 
    |"Implant User"   |"051APLACE"    |"summer"    | "C2324"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2325 @C2326
    Scenario Outline: Testing Standard Collection Entry for Depot/Hub User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on collection request
    And I have set the Collection Account Code as <CAccountCode>
    And I have set the Collection Customer Ref as <CCustomerRef>
    And I have set the Collection Postcode as <CPostcode>
    And I have set the Consignor as <Consignor>
    And I have set the Collection Address 1 as <CAddress1>
    And I have set the Collection Address 2  as <CAddress2>
    And I have set the Collection Town as <CTown>
    And I have set the Collection County as <CCounty>
    And I have set the Collection Service as <CService>
    And I have set the Collection Contact as <CContact>
    And I have set the Collection Phone 1 as <CPhone1>
    And I have set the Collection Phone 2 as <CPhone2>
    And I have set the Collection Email as <CEmail>
    And I have set the CR Delivery Postcode as <CDPostcode>
    And I have set the CR Consignee as <CConsignee>
    And I have set the CR Delivery Address 1 as <CDAddress1>
    And I have set the CR Delivery Address 2 as <CDAddress2>
    And I have set the CR Delivery Town as <CDTown>
    And I have set the CR Delivery County as <CDCounty>
    And I have set the CR Delivery Service as <CDService>
    And I have set the CR Delivery Contact as <CDContact>
    And I have set the CR Delivery Phone 1 as <CDPhone1>
    And I have set the CR Delivery Phone 2 as <CDPhone2>
    And I have set the CR Delivery Email as <CDEmail>
    And I have set the CR Pallet Type as <CPallet>
    And I have set the CR Quantity as <CQuantity>
    And I have set the CR Weight as <CWeight>
    And I have clicked the Collection Finish
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CAccountCode |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight| 
    |"Depot User"     |"051051SHAMEK" |"summer"    | "SAN"       | "C2325"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |
    |"Hub User"       |"099phillipt"  |"summer"    | "kj"        | "C2326"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2447 @C2448
    Scenario Outline: Testing Self Delivery Collection Entry for Depot/Hub User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on collection request
    And I have set the Collection Account Code as <CAccountCode>
    And I have set the Collection Customer Ref as <CCustomerRef>
    And I have set the Collection Postcode as <CPostcode>
    And I have set the Consignor as <Consignor>
    And I have set the Collection Address 1 as <CAddress1>
    And I have set the Collection Address 2  as <CAddress2>
    And I have set the Collection Town as <CTown>
    And I have set the Collection County as <CCounty>
    And I have set the Collection Service as <CService>
    And I have set the Collection Contact as <CContact>
    And I have set the Collection Phone 1 as <CPhone1>
    And I have set the Collection Phone 2 as <CPhone2>
    And I have set the Collection Email as <CEmail>
    And I have set the CR Delivery Postcode as <CDPostcode>
    And I have set the CR Consignee as <CConsignee>
    And I have set the CR Delivery Address 1 as <CDAddress1>
    And I have set the CR Delivery Address 2 as <CDAddress2>
    And I have set the CR Delivery Town as <CDTown>
    And I have set the CR Delivery County as <CDCounty>
    And I have set the CR Delivery Service as <CDService>
    And I have clicked the Collection Self Delivery   
    And I have set the CR Delivery Contact as <CDContact>
    And I have set the CR Delivery Phone 1 as <CDPhone1>
    And I have set the CR Delivery Phone 2 as <CDPhone2>
    And I have set the CR Delivery Email as <CDEmail>
    And I have clicked the Collection Self Delivery
    And I have set the CR Pallet Type as <CPallet>
    And I have set the CR Quantity as <CQuantity>
    And I have set the CR Weight as <CWeight>
    And I have clicked the Collection Finish
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CAccountCode |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight| 
    |"Depot User"     |"051051SHAMEK" |"summer"    | "SAN"       | "C2447"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"PO18 0HB" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"EC"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |
    |"Hub User"       |"099phillipt"  |"summer"    | "kj"        | "C2448"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"PO18 0HB" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"EC"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2336
    Scenario Outline: Testing Standard XL Collection Entry for Implant User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on collection request
    And I have set the Collection Customer Ref as <CCustomerRef>
    And I have set the Collection Postcode as <CPostcode>
    And I have set the Consignor as <Consignor>
    And I have set the Collection Address 1 as <CAddress1>
    And I have set the Collection Address 2  as <CAddress2>
    And I have set the Collection Town as <CTown>
    And I have set the Collection County as <CCounty>
    And I have set the Collection Service as <CService>
    And I have set the Collection Contact as <CContact>
    And I have set the Collection Phone 1 as <CPhone1>
    And I have set the Collection Phone 2 as <CPhone2>
    And I have set the Collection Email as <CEmail>
    And I have set the CR Delivery Postcode as <CDPostcode>
    And I have set the CR Consignee as <CConsignee>
    And I have set the CR Delivery Address 1 as <CDAddress1>
    And I have set the CR Delivery Address 2 as <CDAddress2>
    And I have set the CR Delivery Town as <CDTown>
    And I have set the CR Delivery County as <CDCounty>
    And I have set the CR Delivery Service as <CDService>
    And I have set the CR Delivery Contact as <CDContact>
    And I have set the CR Delivery Phone 1 as <CDPhone1>
    And I have set the CR Delivery Phone 2 as <CDPhone2>
    And I have set the CR Delivery Email as <CDEmail>
    And I have set the CR Width as <CWidth>
    And I have set the CR Depth as <CDepth>
    And I have set the CR Height as <CHeight>
    And I have set the CR XL Weight as <CXLWeight>
    And I have clicked the Collection Finish
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CWidth  | CDepth | CXLWeight|CHeight|
    |"Implant User"   |"051APLACE"    |"summer"    | "C2336"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "XL"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"XL"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "360"   | "240"  | "1000"   |"200"  |

@C2337 @C2338
    Scenario Outline: Testing Standard XL Collection Entry for Depot/Hub User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on collection request
    And I have set the Collection Account Code as <CAccountCode>
    And I have set the Collection Customer Ref as <CCustomerRef>
    And I have set the Collection Postcode as <CPostcode>
    And I have set the Consignor as <Consignor>
    And I have set the Collection Address 1 as <CAddress1>
    And I have set the Collection Address 2  as <CAddress2>
    And I have set the Collection Town as <CTown>
    And I have set the Collection County as <CCounty>
    And I have set the Collection Service as <CService>
    And I have set the Collection Contact as <CContact>
    And I have set the Collection Phone 1 as <CPhone1>
    And I have set the Collection Phone 2 as <CPhone2>
    And I have set the Collection Email as <CEmail>
    And I have set the CR Delivery Postcode as <CDPostcode>
    And I have set the CR Consignee as <CConsignee>
    And I have set the CR Delivery Address 1 as <CDAddress1>
    And I have set the CR Delivery Address 2 as <CDAddress2>
    And I have set the CR Delivery Town as <CDTown>
    And I have set the CR Delivery County as <CDCounty>
    And I have set the CR Delivery Service as <CDService>
    And I have set the CR Delivery Contact as <CDContact>
    And I have set the CR Delivery Phone 1 as <CDPhone1>
    And I have set the CR Delivery Phone 2 as <CDPhone2>
    And I have set the CR Delivery Email as <CDEmail>
    And I have set the CR Width as <CWidth>
    And I have set the CR Depth as <CDepth>
    And I have set the CR Height as <CHeight>
    And I have set the CR XL Weight as <CXLWeight>
    And I have clicked the Collection Finish
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CAccountCode |CCustomerRef| CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CWidth  | CDepth | CXLWeight|CHeight|
    |"Depot User"     |"051051SHAMEK" |"summer"    | "SAN"       |"C2337"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "XL"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"XL"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "360"   | "240"  | "1000"   |"200"  |
    |"Hub User"       |"099phillipt"  |"summer"    | "KJ"        |"C2338"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "XL"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"XL"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "360"   | "240"  | "1000"   |"200"  |