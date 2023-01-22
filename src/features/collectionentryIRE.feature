@ConnectRegression @IRECollectionsC2324
Feature: Test that TPN Connect allows different collection requests for IRE users
    As a user
    I want to be able to put on a collection via TPN Connect

Background:
        Given I open the site "/" 

@C2721
    Scenario Outline: Testing Standard IRE Collection Entry for Implant User 
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
    |"Implant User"   |"114LCRF"      |"beans"     | "C2721"     | "CKC"        | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"WT"       | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"B4"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2722 @C2723
    Scenario Outline: Testing Standard IRE Collection Entry for Depot/Hub User 
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
    |UserType         |Username       |Password    |CAccountCode |CCustomerRef | CPostcode | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact | CPhone1     |CPhone2     | CEmail         |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService | CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight| 
    |"Depot User"     |"setup102"     |"beans"     | "1001"      | "C2722"     | "WT"      | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "NDHL"     | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"EC"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |
    |"Hub User"       |"100avrilb"    |"beans"     | "tes"       | "C2723"     | "CKN"     | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EEC"      | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"WT"       | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"AM"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2724 @C2725
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
    |UserType         |Username       |Password   |CAccountCode |CCustomerRef | CPostcode    | Consignor | CAddress1      | CAddress2  | CTown          | CCounty          | CService   | CContact| CPhone1      |CPhone2     | CEmail    |CDPostcode |CConsignee | CDAddress1 | CDAddress2 |CDTown |CDCounty |CDService| CDContact| CDPhone1    |CDPhone2    |CDEmail         | CPallet  | CQuantity  | CWeight| 
    |"Depot User"     |"setup116"     |"beans"    | "1001"      | "C2724"     | "WT"         | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC" | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"NDHL"   | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |
    |"Hub User"       |"100avrilb"    |"beans"    | "tes"        | "C2725"    | "CKN"        | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"WT"  | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"EEC"    | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2726
    Scenario Outline: Testing Brexit IRE Collection Entry for Implant User 
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
    |"Implant User"   |"116an"        |"beans"     | "C2726"     | "SA71 4TA"   | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"SSSS"    | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |"luke@luke.com" |"9026108900"    |"2000"         | "50"      | "50"         | "1"          | "Importer"    | "1234567"   | "2000"    |"1234567"      | "DAP"      |"EUR"    |"GB989853334000"|"IE4862757G" | "CKC"             |

@C2727 @C2728
    Scenario Outline: Testing Brexit IRE Collection Entry for Depot/Hub User 
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
    |"Depot User"     |"setup102"     |"beans"     | "1001"      |"C2727"      | "SA10 6AA"   | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"SSSS"    | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |"luke@luke.com" |"9026108900"    |"5525"         | "50"      | "50"         | "1"          | "Importer"    | "1234567"   | "5525"    |"1234567"      | "DAP"      |"GBP"    |"GB989853334000"|"IE4862757G" | "CKC"             |
    |"Hub User"       |"100avrilb"    |"beans"     | "tes"       |"C2728"      | "LS10 1EE"   | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "ND"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"EC"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |"luke@luke.com" |"9026108900"    |"5525"         | "50"      | "50"         | "1"          | "Importer"    | "1234567"   | "5525"    |"1234567"      | "DAP"      |"EUR"    |"GB989853334000"|"IE4862757G" | "CKC"             |

@C2849
    Scenario Outline: Testing Standard IRE XL Collection Entry for Implant User 
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
    |"Implant User"   |"114LCRF"      |"beans"     | "C2849"     | "WX"         | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "XL"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"WT"       | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"XL"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "300"   | "240"  | "1000"   |"200"  |

@C2850 @C2851
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
    |"Depot User"     |"setup116"     |"beans"     | "1344"      |"C2850"     | "DN0"        | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "XL"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKN"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"XL"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "360"   | "240"  | "1000"   |"200"  |
    |"Hub User"       |"100avrilb"    |"beans"     | "tes"       |"C2851"     | "CKN"        | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "XL"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKW"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"XL"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "360"   | "240"  | "1000"   |"200"  |

@C2852
    Scenario Outline: Testing IRE FVC Collection Entry for Implant User 
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
    |"Implant User"   |"114LCRF"      |"beans"     | "C2852"     | "WX"         | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  | "LukeG"      |"luke@lukeg.com"| "100.00"      |

@C2853 @C3528
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
    |"Depot User"     |"setup116"     |"beans"     | "1344"      | "C2853"     | "DN0"        | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "ND"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKN"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  | "LukeG"     |"luke@lukeg.com"| "100.00"      |
    |"Hub User"       |"099phillipt"  |"beans"     | "tes"       | "C3528"     | "WT"         | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"AM"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  | "LukeG"     |"luke@lukeg.com"| "100.00"      |

@C2855
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
    |"Implant User"   |"114LCRF"      |"beans"     | "C2855"     | "CKN"        | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"WT"       | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2856 @C2857
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
    |"Depot User"     |"setup102"     |"beans"     | "ABM001"    | "C2856"     | "WX"         | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"WT"       | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |
    |"Hub User"       |"100avrilb"    |"beans"     | "tes"       | "C2857"     | "WX"         | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C2858 @C2859
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
    |"Depot User"     |"051051SHAMEK" |"beans"     | "ABM001"    |"C2858"      | "CKN"        | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"WX"       | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  | "129"          |
    |"Hub User"       |"099phillipt"  |"beans"     | "tes"       |"C2859"      | "CKN"        | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKW"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  | "107"          |

@C2862 @C2863
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
    |"Depot User"     |"setup116"     |"beans"     | "ADPOL1"    |"C2862"      | "WT"         | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  | "129"        |"This is an Automated Test ran by LukeG"|
    |"Hub User"       |"100avrilb"    |"beans"     | "tes"       |"C2863"      | "WT"         | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  | "129"        |"This is an Automated Test ran by LukeG"|

@C3529
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
    |"Implant User"   |"114LCRF"      |"beans"     | "C3529"     | "WX"         | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C3530 @C3531
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
    |"Depot User"     |"setup102"     |"beans"     | "ABM001"    | "C3530"     | "WX"         | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |
    |"Hub User"       |"100avrilb"    |"beans"     | "tes"       | "C3531"     | "CKC"        | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKN"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C3526
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
    |"Implant User"   |"114LCRF"      |"beans"     | "C3526"     | "WT"         | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "AM"       | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |

@C3527 @C3528
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
    |"Depot User"     |"setup102"     |"beans"     | "ABM001"    | "C3527"     | "WX"         | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKC"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |
    |"Hub User"       |"100avrilb"    |"beans"     | "tes"       | "C3528"     | "WT"         | "LukeG"   |"TPN Avenue"    | "TPN Road" | "Birmingham"   | "West Midlands"  | "EC"       | "LukeG" | "0123456789" |"0123456789"|"luke@lukeg.com"|"CKN"      | "LukeG"   | "Test"     |"Test"      |"Test" |"Test"   |"ND"      | "LukeG"  | "0123456789"|"0123456789"|"luke@lukeg.com"| "Full"   | "1"        | "150"  |