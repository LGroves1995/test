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
    |"Implant User"   |"051APLACE"    |"beans"     | "C2324"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

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
    |"Depot User"     |"051051SHAMEK" |"beans"     | "SAN"       | "C2325"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     | "34"        | "C2326"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

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
    And I have set the CR Pallet Type as <CPallet>
    And I have set the CR Quantity as <CQuantity>
    And I have set the CR Weight as <CWeight>
    And I have clicked the Collection Finish
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CAccountCode |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight| 
    |"Depot User"     |"051051SHAMEK" |"beans"    | "SAN"       | "C2447"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"PO18 0HB" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"EC"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"    | "34"        | "C2448"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"PO18 0HB" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"EC"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2330
    Scenario Outline: Testing Brexit Collection Entry for Implant User 
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
    And I have set the CR Customs Email as <CCustomEmail>
    And I have set the CR Commodity Code as <CCommodityCode>
    And I have set the CR Invoice Value as <CInvoiceValue>
    And I have set the CR Net Weight as <CNetWeight>
    And I have set the CR Gross Weight as <CGrossWeight>
    And I have set the CR Number of Pallets as <CPalletNumber>
    And I have set the CR Deferment Type as <CDefermentType>
    And I have set the CR AccountDAN as <CAccountDAN>
    And I have set the CR FOB Value as <CFOBValue>
    And I have set the CR Invoice Number as <CInvoiceNumber>
    And I have set the CR Inco Terms as <CIncoTerms>
    And I have set the CR Invoice Currency as <CCurrency>
    And I have uploaded the Collection Commericial Invoice
    And I have uploaded the Collection Transport Document
    And I have set the CR Exporter EORI as <CExporterEORI>
    And I have set the CR Importer EORI as <CImporterEORI>
    And I have set the CR Importer Postcode as <CImporterPostcode>
    And I have uploaded the Collection Direct Representation
    And I have clicked Customs Goods Licensing
    And I have clicked Customs Declaration
    And I have clicked the Customs Finish
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight| CCustomEmail   | CCommodityCode | CInvoiceValue | CNetWeight| CGrossWeight |CPalletNumber | CDefermentType| CAccountDAN | CFOBValue |CInvoiceNumber | CIncoTerms |CCurrency|CExporterEORI   |CImporterEORI| CImporterPostcode |
    |"Implant User"   |"051APLACE"    |"beans"     | "C2330"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"SSSS"    | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |"luke@luke.com" |"3214109000"    |"5525"         | "50"      | "50"         | "1"          | "Importer"    | "1234567"   | "5525"    |"1234567"      | "DAP"      |"EUR"    |"GB989853334000"|"IE4862757G" | "CKC"             |

@C2331 @C2332
    Scenario Outline: Testing Brexit Collection Entry for Depot/Hub User 
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
    And I have set the CR Customs Email as <CCustomEmail>
    And I have set the CR Commodity Code as <CCommodityCode>
    And I have set the CR Invoice Value as <CInvoiceValue>
    And I have set the CR Net Weight as <CNetWeight>
    And I have set the CR Gross Weight as <CGrossWeight>
    And I have set the CR Number of Pallets as <CPalletNumber>
    And I have set the CR Deferment Type as <CDefermentType>
    And I have set the CR AccountDAN as <CAccountDAN>
    And I have set the CR FOB Value as <CFOBValue>
    And I have set the CR Invoice Number as <CInvoiceNumber>
    And I have set the CR Inco Terms as <CIncoTerms>
    And I have set the CR Invoice Currency as <CCurrency>
    And I have uploaded the Collection Commericial Invoice
    And I have uploaded the Collection Transport Document
    And I have set the CR Exporter EORI as <CExporterEORI>
    And I have set the CR Importer EORI as <CImporterEORI>
    And I have set the CR Importer Postcode as <CImporterPostcode>
    And I have uploaded the Collection Direct Representation
    And I have clicked Customs Goods Licensing
    And I have clicked Customs Declaration
    And I have clicked the Customs Finish
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CAccountCode |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight| CCustomEmail   | CCommodityCode | CInvoiceValue | CNetWeight| CGrossWeight |CPalletNumber | CDefermentType| CAccountDAN | CFOBValue |CInvoiceNumber | CIncoTerms |CCurrency|CExporterEORI   |CImporterEORI| CImporterPostcode |
    |"Depot User"     |"051051SHAMEK" |"beans"     | "SAN"       |"C2331"      | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"SSSS"    | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |"luke@luke.com" |"3214109000"    |"5525"         | "50"      | "50"         | "1"          | "Importer"    | "1234567"   | "5525"    |"1234567"      | "DAP"      |"EUR"    |"GB989853334000"|"IE4862757G" | "CKC"             |
    |"Hub User"       |"099phillipt"  |"beans"     | "34"        |"C2332"      | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"SSSS"    | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |"luke@luke.com" |"3214109000"    |"5525"         | "50"      | "50"         | "1"          | "Importer"    | "1234567"   | "5525"    |"1234567"      | "DAP"      |"EUR"    |"GB989853334000"|"IE4862757G" | "CKC"             |

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
    |"Implant User"   |"051APLACE"    |"beans"     | "C2336"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "XL"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"XL"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "360"   | "240"  | "1000"   |"200"  |

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
    |"Depot User"     |"051051SHAMEK" |"beans"     | "SAN"       |"C2337"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "XL"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"XL"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "360"   | "240"  | "1000"   |"200"  |
    |"Hub User"       |"099phillipt"  |"beans"     | "34"        |"C2338"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "XL"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"XL"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "360"   | "240"  | "1000"   |"200"  |

@C2452
    Scenario Outline: Testing FVC Collection Entry for Implant User 
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
    And I have clicked the CR FVC Button
    And I have set the CR Insured Name as <CInsuredName>
    And I have set the CR Insured Email as <CInsuredEmail>
    And I have set the CR Insured Amount as <CInsuredAmount>
    And I have clicked the CR FVC Submit
    And I have clicked the Collection Finish
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight| CInsuredName | CInsuredEmail  | CInsuredAmount|
    |"Implant User"   |"051APLACE"    |"beans"     | "C2452"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  | "LukeG"      |"luke@lukeg.com"| "100.00"      |

@C2453 @C2454
    Scenario Outline: Testing FVC Collection Entry for Depot/Hub User 
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
    And I have clicked the CR FVC Button
    And I have set the CR Insured Name as <CInsuredName>
    And I have set the CR Insured Email as <CInsuredEmail>
    And I have set the CR Insured Amount as <CInsuredAmount>
    And I have clicked the CR FVC Submit
    And I have clicked the Collection Finish
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CAccountCode |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight|CInsuredName | CInsuredEmail  | CInsuredAmount|
    |"Depot User"     |"051051SHAMEK" |"beans"     | "SAN"       | "C2453"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"AM"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  | "LukeG"     |"luke@lukeg.com"| "100.00"      |
    |"Hub User"       |"099phillipt"  |"beans"     | "34"        | "C2454"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"AM"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  | "LukeG"     |"luke@lukeg.com"| "100.00"      |

@C2579
    Scenario Outline: Testing Local Postcode Collection Entry for Implant User 
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
    |"Implant User"   |"051APLACE"    |"beans"     | "C2579"     | "B36 8PT"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"TN5 7DL"  | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2580 @C2581
    Scenario Outline: Testing Local Postcode Collection Entry for Depot/Hub User 
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
    |"Depot User"     |"051051SHAMEK" |"beans"     | "SAN"       | "C2580"     | "SA10 6AA"   | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"TN5 7DL"  | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     | "34"        | "C2581"     | "LS10 1EE"   | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"B24 0SG"  | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2604 @C2605
    Scenario Outline: Testing Set Collection Depot Collection Entry for Depot/Hub User 
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
    And I have set the CR Collection Depot as <CCollectionDepot>
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
    |UserType         |Username       |Password    |CAccountCode |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight|CCollectionDepot|
    |"Depot User"     |"051051SHAMEK" |"beans"     | "SAN"       |"C2604"      | "B36 8PT"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  | "052"          |
    |"Hub User"       |"099phillipt"  |"beans"     | "34"        |"C2605"      | "B36 8PT"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  | "052"          |

@C2608 @C2609
    Scenario Outline: Testing Set Delivery Depot Collection Entry for Depot/Hub User 
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
    And I have clicked set via CR Delivery Depot
    And I have set via CR Delivery Depot as <CDeliveryDepot>
    And I have set via CR Delivery Depot reason as <CDeliveryDepotReason>
    And I have clicked set via CR Delivery Depot Submit
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
    |UserType         |Username       |Password    |CAccountCode |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight|CDeliveryDepot|CDeliveryDepotReason                    |
    |"Depot User"     |"051051SHAMEK" |"beans"     | "SAN"       |"C2608"      | "B36 8PT"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  | "052"        |"This is an Automated Test ran by LukeG"|
    |"Hub User"       |"099phillipt"  |"beans"     | "34"        |"C2609"      | "B36 8PT"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  | "052"        |"This is an Automated Test ran by LukeG"|

@C2613
    Scenario Outline: Testing 7.5 Tonne Collection Entry for Implant User 
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
    And I have clicked 7.5 Tonne for CR Collection
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
    And I have clicked 7.5 Tonne for CR Delivery
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
    |"Implant User"   |"051APLACE"    |"beans"     | "C2613"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2614 @C2615
    Scenario Outline: Testing 7.5 Tonne Collection Entry for Depot/Hub User 
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
    And I have clicked 7.5 Tonne for CR Collection
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
    And I have clicked 7.5 Tonne for CR Delivery
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
    |"Depot User"     |"051051SHAMEK" |"beans"     | "SAN"       | "C2614"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     | "34"        | "C2615"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2623
    Scenario Outline: Testing Limited Quantity Collection Entry for Implant User 
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
    And I have clicked 7.5 Tonne for CR Collection
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
    And I have clicked 7.5 Tonne for CR Delivery
    And I have set the CR Delivery Contact as <CDContact>
    And I have set the CR Delivery Phone 1 as <CDPhone1>
    And I have set the CR Delivery Phone 2 as <CDPhone2>
    And I have set the CR Delivery Email as <CDEmail>
    And I have set the CR Pallet Type as <CPallet>
    And I have set the CR Quantity as <CQuantity>
    And I have set the CR Weight as <CWeight>
    And I have clicked CR Limited Quantity
    And I have set CR Limited Quantity UN as <CLimitedQuantityUN>
    And I have clicked CR Limited Quantity Submit
    And I have clicked the Collection Finish
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight| CLimitedQuantityUN| 
    |"Implant User"   |"051APLACE"    |"beans"     | "C2623"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |"1201"             |

@C2624 @C2625
    Scenario Outline: Testing Limited Quantity Collection Entry for Depot/Hub User 
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
    And I have clicked CR Limited Quantity
    And I have set CR Limited Quantity UN as <CLimitedQuantityUN>
    And I have clicked CR Limited Quantity Submit
    And I have clicked the Collection Finish
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CAccountCode |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight| CLimitedQuantityUN| 
    |"Depot User"     |"051051SHAMEK" |"beans"     | "SAN"       | "C2624"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |"1201"             |
    |"Hub User"       |"099phillipt"  |"beans"     | "34"        | "C2625"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |"1201"             |

@C2637
    Scenario Outline: Testing COP No image upload Collection Entry for Implant User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on collection request
    And I have set the Collection Customer Ref as <CCustomerRef>
    And I have clicked CR COP Box
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
    And I have clicked CR COP Box
    And I have clicked the Collection Finish
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight|
    |"Implant User"   |"051APLACE"    |"beans"     | "C2637"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2640 @C3080
    Scenario Outline: Testing COP No image upload Collection Entry for Depot/Hub User 
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
    And I have clicked CR COP Box
    And I have clicked the Collection Finish
    And I see a success message
    And I see an 8 digit docket number
    Then I click the LogOff button

    Examples:
    |UserType         |Username       |Password    |CAccountCode |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight| 
    |"Depot User"     |"051051SHAMEK" |"beans"     | "SAN"       | "C2640"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     | "34"        | "C3080"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2636
    Scenario Outline: Testing COP Image upload Collection Entry for Implant User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on collection request
    And I have set the Collection Customer Ref as <CCustomerRef>
    And I have clicked CR COP Box
    And I have uploaded CR own paperwork
    And I have uploaded CR own paperwork
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
    |"Implant User"   |"051APLACE"    |"beans"     | "C2636"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2639 @C3079
    Scenario Outline: Testing COP Image upload Collection Entry for Depot/Hub User 
    Given I have logged in to TPN Connect with username <Username> and password <Password>       
    When I have clicked on collection request
    And I have set the Collection Account Code as <CAccountCode>
    And I have clicked CR COP Box
    And I have uploaded CR own paperwork
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
    |"Depot User"     |"051051SHAMEK" |"beans"     | "SAN"       | "C2639"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |
    |"Hub User"       |"099phillipt"  |"beans"     | "34"        | "C3079"     | "B36 0EY"    | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"RH11 0AA" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |