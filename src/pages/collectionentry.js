import pressButton from '../support/action/pressButton';
import page from './page'


const basepath = require('path'); //this is for a file upload
class CollectionEntryPage extends page {

get collectionaccountcodeField () { return $ ('//*[@id="CR_ConsignorCode"]')}
get collectionaccountcodeList () { return $ ('#CR_ConsignorCode-list')}
get collectionCustomerRefField () { return $ ('//*[@id="CR_CustomerReference"]')}
get collectionPostcodeField () { return $ ('input[id="CR_CollectionPostCode"]')}
get consignorField () { return $ ('input[id="CR_CollectionConsignorName"]')}
get collectionAddress1Field () { return $ ('//*[@id="CR_CollectionAddress1"]')}
get collectionAddress2Field () { return $ ('//*[@id="CR_CollectionAddress2"]')}
get collectionTownField () { return $ ('//*[@id="CR_CollectionTown"]')}
get collectionCountyField () { return $ ('//*[@id="CR_CollectionCounty"]')}
get collectionServiceField () { return $ ('//*[@id="CR_CollectionDetails"]/table/tbody/tr[2]/td[4]/span[1]/span/span[1]')}
get collectionContactField () { return $ ('//*[@id="CR_CollectionContact"]')}
get collectionPhone1Field () { return $ ('//*[@id="CR_CollectionTelephone"]')}
get collectionPhone2Field () { return $ ('//*[@id="CR_CollectionTelephone2"]')}
get collectionEmailField () { return $ ('//*[@id="CR_CollectionEmail"]')}
get collectionDeliveryPostcodeField () { return $ ('//*[@id="CR_DeliveryPostCode"]')}
get collectionConsigneeField () { return $ ('//*[@id="CR_DeliveryConsigneeName"]')}
get collectionDeliveryAddress1Field () { return $ ('//*[@id="CR_DeliveryAddress1"]')}
get collectionDeliveryAddress2Field () { return $ ('//*[@id="CR_DeliveryAddress2"]')}
get collectionDeliveryTownField () { return $ ('//*[@id="CR_DeliveryTown"]')}
get collectionDeliveryCountyField () { return $ ('//*[@id="CR_DeliveryCounty"]')}
get collectionDeliveryServiceField () { return $ ('//*[@id="CR_DeliveryDetails"]/table/tbody/tr[2]/td[4]/span[1]/span/span[1]')}
get collectionDeliveryContactField () { return $ ('//*[@id="CR_DeliveryContact"]')}
get collectionDeliveryPhone1Field () { return $ ('//*[@id="CR_DeliveryTelephone"]')}
get collectionDeliveryPhone2Field () { return $ ('//*[@id="CR_DeliveryTelephone2"]')}
get collectionDeliveryEmailField () { return $ ('//*[@id="CR_DeliveryEmail"]')}
get collectionPalletTypeField () { return $ ('//*[@id="CR_PalletDetails"]/table/tbody/tr/td[2]/span/span/span[1]')}
get collectionQuantityField () { return $ ('//*[@id="CR_PalletDetails"]/table/tbody/tr/td[4]/span/span/input[1]')}
get collectionWeightField () { return $ ('//*[@id="CR_PalletDetails"]/table/tbody/tr/td[6]/span/span/input[1]')}
get collectionFinishBtn () { return $ ('//*[@id="CR_CreateConsignment"]')}
get collectionSelfDeliveryBox () { return $ ('//*[@id="CR_SelfDelivery"]')}
get collectionWidthField () { return $ ('//*[@id="CR_PalletDetailsXL"]/table/tbody/tr[2]/td[2]/span/span/input[1]')}
get collectionDepthField () { return $ ('//*[@id="CR_PalletDetailsXL"]/table/tbody/tr[2]/td[4]/span/span/input[1]')}
get collectionHeightField () { return $ ('//*[@id="CR_PalletDetailsXL"]/table/tbody/tr[2]/td[6]/span/span/input[1]')}
get collectionXLWeightField () { return $ ('//*[@id="CR_PalletDetailsXL"]/table/tbody/tr[2]/td[8]/span/span/input[1]')}
get collectionFVCBtn () { return $ ('//*[@id="CR_showfvc"]')}
get collectionFVCInsuredNameField () { return $ ('//*[@id="CR_fvcInsuredName"]')}
get collectionFVCInsuredEmailField () { return $ ('//*[@id="CR_fvcInsuredEmail"]')}
get collectionFVCInsuredAmountField () { return $ ('//*[@id="CR_FVCWindow"]/div/table/tbody/tr[2]/td[2]/span[1]/span/input[1]')}
get collectionFVCSubmitBtn () { return $ ('//*[@id="CR_submitfvc"]')}
get collectionSetViaColDepotList () { return $ ('//*[@id="CR_collectionDepotDetails"]/span[2]/span/span[1]')}
get collectionSetViaDelDepotBtn () { return $ ('//*[@id="CR_viaDepot"]')}
get collectionSetViaDelDepotList () { return $ ('//*[@id="CR_viaDepotRow"]/span/span/span[1]')}
get collectionSetViaDelDepotReasonField () { return $ ('//*[@id="CR_viaDepotReason"]')}
get collectionSetViaDelDepotSubmitBtn () { return $ ('//*[@id="CR_submitvd"]')}
get collectionTonneColBox () { return $ ('//*[@id="CR_SevenHalfTonneCollection"]')}
get collectionTonneDelBox () { return $ ('//*[@id="CR_SevenHalfTonne"]')}
get collectionLimitedQuantityBox () { return $ ('//*[@id="CR_LimitedQuantity"]')}
get collectionLimitedQuantityUNField () { return $ ('//*[@id="CR_UNNumberInput"]')}
get collectionLimitedQuantitySubmitBtn () { return $ ('//*[@id="CR_UNNumberButton"]')} 
get collectionCOPBox () { return $ ('//*[@id="CR_OwnPaperwork"]')}
get collectioncopUploadButton () { return $ ('//*[@id="CopImageFilesFromCollectionRequest"]')}

//Collection Account Code
async setCRAccountCode (CRAccountCode) {
    await browser.pause(3000);
    await this.collectionaccountcodeField.click();
    await this.collectionaccountcodeField.waitForDisplayed();
    await this.collectionaccountcodeField.setValue(CRAccountCode);
    await this.collectionaccountcodeList.waitForDisplayed();
    await pressButton("ArrowDown");
    await pressButton("Enter");
    await pressButton("Tab");
}

//Collection Customer Ref
async setCRCustomerRef (CRCustomerRef) {
    await this.collectionCustomerRefField.click();
    await this.collectionCustomerRefField.setValue(CRCustomerRef);
    await pressButton("Tab");
}

//Collection Postcode
async setCRPostcode (CRPostcode) {
    await this.collectionPostcodeField.click();
    await this.collectionPostcodeField.setValue(CRPostcode);
    await pressButton("Tab");
    await browser.pause(1000)
}

//Consignor
async setCosignorField (Consignor) {
    await this.consignorField.click();
    await this.consignorField.setValue(Consignor);
    await pressButton("Tab");
}

//Collection Address 1
async setCRAddress1 (CRAddress1) {
    await this.collectionAddress1Field.click();
    await this.collectionAddress1Field.setValue(CRAddress1);
    await pressButton("Tab");
}

//Collection Address 2 
async setCRAddress2 (CRAddress2) {
    await this.collectionAddress2Field.click();
    await this.collectionAddress2Field.setValue(CRAddress2);
    await pressButton("Tab");
}

//Collection Town Field
async setCRTown (CRTown) {
    await this.collectionTownField.click();
    await this.collectionTownField.setValue(CRTown);
    await pressButton("Tab");
}

//Collection County 
async setCRCounty (CRCounty) {
    await this.collectionCountyField.click();
    await this.collectionCountyField.setValue(CRCounty);
    await pressButton("Tab");
    await browser.pause(5000);
}

//Collection Service 
async setCRService (CRService) {
    await this.collectionServiceField.click();
    await this.collectionServiceField.setValue(CRService);
    await pressButton("Enter");
    await pressButton("Tab")
    await browser.pause(5000);
}

//Collection Contact 
async setCRContact (CRContact) {
    await browser.pause(5000);
    await this.collectionContactField.click();
    await this.collectionContactField.setValue(CRContact);
    await pressButton("Tab");
}

//Collection Phone 1  
async setCRPhone1 (CRPhone1) {
    await this.collectionPhone1Field.click();
    await this.collectionPhone1Field.setValue(CRPhone1);
    await pressButton("Tab");
}

//Collection Phone 2  
async setCRPhone2 (CRPhone2) {
    await this.collectionPhone2Field.click();
    await this.collectionPhone2Field.setValue(CRPhone2);
    await pressButton("Tab");
}

//Collection Email 
async setCREmail (CREmail) {
    await this.collectionEmailField.click();
    await this.collectionEmailField.setValue(CREmail);
    await pressButton("Tab");
    await browser.pause(5000);
}

//Collection Delivery Postcode 
async setCRDeliveryPostcode (CRDeliveryPostcode) {
    await this.collectionDeliveryPostcodeField.click();
    await this.collectionDeliveryPostcodeField.setValue(CRDeliveryPostcode);
    await pressButton("Tab");
    await browser.pause(3000)
}

//Consignee
async setCRConsigneeField (CRConsignee) {
    await this.collectionConsigneeField.click();
    await this.collectionConsigneeField.setValue(CRConsignee);
    await pressButton("Tab");
}

//Collection Delivery Address 1
async setCRDeliveryAddress1 (CRDeliveryAddress1) {
    await this.collectionDeliveryAddress1Field.click();
    await this.collectionDeliveryAddress1Field.setValue(CRDeliveryAddress1);
    await pressButton("Tab");
}

//Collection Delivery Address 2 
async setCRDeliveryAddress2 (CRDeliveryAddress2) {
    await this.collectionDeliveryAddress2Field.click();
    await this.collectionDeliveryAddress2Field.setValue(CRDeliveryAddress2);
    await pressButton("Tab");
}

//Collection Delivery Town 
async setCRDeliveryTown (CRDeliveryTown) {
    await this.collectionDeliveryTownField.click();
    await this.collectionDeliveryTownField.setValue(CRDeliveryTown);
    await pressButton("Tab");
}

//Collection Delivery County 
async setCRDeliveryCounty (CRDeliveryCounty) {
    await this.collectionDeliveryCountyField.click();
    await this.collectionDeliveryCountyField.setValue(CRDeliveryCounty);
    await pressButton("Tab");
    await browser.pause(5000);
}

//Collection Delivery Service 
async setCRDeliveryService (CRDeliveryService) {
    await this.collectionDeliveryServiceField.click();
    await this.collectionDeliveryServiceField.waitForDisplayed();
    await this.collectionDeliveryServiceField.setValue(CRDeliveryService);
    await this.collectionDeliveryServiceField.waitForDisplayed();
    await pressButton("Enter");
    await pressButton("Tab")
    await browser.pause(5000);
}

//Collection Delivery Contact 
async setCRDeliveryContact (CRDeliveryContact) {
    await this.collectionDeliveryContactField.click();
    await this.collectionDeliveryContactField.setValue(CRDeliveryContact);
    await pressButton("Tab");
}

//Collection Delivery Phone 1  
async setCRDeliveryPhone1 (CRDeliveryPhone1) {
    await this.collectionDeliveryPhone1Field.click();
    await this.collectionDeliveryPhone1Field.setValue(CRDeliveryPhone1);
    await pressButton("Tab");
}

//Collection Delivery Phone 2  
async setCRDeliveryPhone2 (CRDeliveryPhone2) {
    await this.collectionDeliveryPhone2Field.click();
    await this.collectionDeliveryPhone2Field.setValue(CRDeliveryPhone2);
    await pressButton("Tab");
}

//Collection Delivery Email 
async setCRDeliveryEmail (CRDeliveryEmail) {
    await this.collectionDeliveryEmailField.click();
    await this.collectionDeliveryEmailField.setValue(CRDeliveryEmail);
    await pressButton("Tab");
}

//Collection Pallet Type 
async setCRPalletType (CRPalletType) {
    await browser.pause(5000);
    await this.collectionPalletTypeField.click();
    await this.collectionPalletTypeField.waitForDisplayed
    await this.collectionPalletTypeField.setValue(CRPalletType);
    await this.collectionPalletTypeField.waitForDisplayed
    await pressButton("Enter");
    await pressButton("Tab")
    await browser.pause(5000);
}

//Collection Pallet Quantity 
async setCRQuantity (CRQuantity) {
    await this.collectionQuantityField.click();
    await this.collectionQuantityField.setValue(CRQuantity);
    await pressButton("Tab");
    
}

//Collection Standard Pallet Weight 
async setCRWeight (CRWeight) {
    await this.collectionWeightField.setValue(CRWeight);
    await pressButton("Tab");
    await browser.pause(5000);
    
}

//Collection Finish 
async clickCollectionFinish () {
    await this.collectionFinishBtn.click()
    await browser.pause(5000)
}

//Collection Self Delivery
async clickCollectionSelfDelivery () {
    await this.collectionSelfDeliveryBox.click();
    await browser.pause(2000);
}

//Collection XL Pallet Width 
async setCRWidth (CRWidth) {
    await this.collectionWidthField.setValue(CRWidth);
    await pressButton("Tab");   
}

//Collection XL Pallet Depth 
async setCRDepth (CRDepth) {
    await this.collectionDepthField.setValue(CRDepth);
    await pressButton("Tab");  
}

//Collection XL Pallet Height
async setCRHeight (CRHeight) {
    await this.collectionHeightField.setValue(CRHeight);
    await pressButton("Tab");  
}

//Collection XL Pallet Weight
async setCRXLWeight (CRXLWeight) {
    await this.collectionXLWeightField.setValue(CRXLWeight);
    await pressButton("Tab");  
}

//Collection Set FVC 
async clickCRFVCBtn () {
    await this.collectionFVCBtn.click();
    await pressButton ("Tab"); 
}

//Collection FVC Insured Name 
async setCRFVCName (CRInsuredName) {
    await this.collectionFVCInsuredNameField.waitForDisplayed();
    await this.collectionFVCInsuredNameField.click();
    await this.collectionFVCInsuredNameField.setValue(CRInsuredName);
    await pressButton("Tab");
    await browser.pause (2000);
}

//Collection FVC Insured Email 
async setCRFVCEmail (CRInsuredEmail) {
    await this.collectionFVCInsuredEmailField.click();
    await this.collectionFVCInsuredEmailField.setValue(CRInsuredEmail);
    await browser.pause (2000);
}

//Collection FVC Insured Amount 
async setCRFVCAmount (CRInsuredAmount) {
    await this.collectionFVCInsuredAmountField.setValue(CRInsuredAmount);
    await pressButton("Enter");
}

//Collection FVC Submit
async clickCRFVCSubmit () {
    await this.collectionFVCSubmitBtn.click();
    await browser.pause(7000);
}

//Collection Set Collection Depot
async setCRCollectionDepot (CRCollectionDepot) {
    await this.collectionSetViaColDepotList.click();
    await this.collectionSetViaColDepotList.waitForDisplayed
    await this.collectionSetViaColDepotList.setValue(CRCollectionDepot);
    await this.collectionSetViaColDepotList.waitForDisplayed
    await pressButton("Enter");
    await pressButton("Tab")
    await browser.pause(5000);
}

//Collection Set Delivery Depot
async clickCRSetViaDepot () {
    await this.collectionSetViaDelDepotBtn.click();
    await browser.pause(3000);
}

//Collection Set Delivery Depot Number
async setCRDeliveryDepot (CRDeliveryDepot) {
    await this.collectionSetViaDelDepotList.click();
    await this.collectionSetViaDelDepotList.waitForDisplayed();
    await this.collectionSetViaDelDepotList.setValue(CRDeliveryDepot);
    await this.collectionSetViaDelDepotList.waitForDisplayed();
    await pressButton("Enter");
    await pressButton("Tab")
    await browser.pause(5000);
}

//Collection Set Delivery Depot Reason
async setCRDeliveryDepotReason (CRDeliveryDepotReason) {
    await this.collectionSetViaDelDepotReasonField.click();
    await this.collectionSetViaDelDepotReasonField.setValue(CRDeliveryDepotReason);
    await pressButton("Tab");
}

//Collection Set Delivery Submit
async clickCRDeliveryDepotSubmit () {
    await this.collectionSetViaDelDepotSubmitBtn.click();
    await browser.pause(5000);
}

//Collection 7.5 Tonne Collection
async clickCRTonneColBox () {
    await this.collectionTonneColBox.click();
    await browser.pause(2000);
}

//Collection 7.5 Tonne Delivery
async clickCRTonneDelBox () {
    await this.collectionTonneDelBox.click();
    await browser.pause(2000);
}

//Collection Limited Quantity
async clickCRLimitedQuantity () {
    await this.collectionLimitedQuantityBox.click.apply();
    await browser.pause(1000);
}

//Collection Limited Quantity UN
async setCRLimitedQuantityUN (CRLimitedQuantityUN) {
    await this.collectionLimitedQuantityUNField.click();
    await this.collectionLimitedQuantityUNField.setValue(CRLimitedQuantityUN);
    await browser.pause(2000);
}

//Collection Limited Quantity Submit 
async clickCRLimitedQuantitySubmit () {
    await this.collectionLimitedQuantitySubmitBtn.click();
    await browser.pause(3000);
}

//Collection COP Button
async clickCRCOPBox () { 
    await browser.pause(3000);
    await this.collectionCOPBox.click(); 
}

//Collection COP File Upload
async clickCRuploadCOPfile () {
    const filePath = basepath.join(__dirname, '../data/testImageFile.jpg');
    await this.collectioncopUploadButton.setValue(filePath);
    await browser.pause(5000);
}

}
export default new CollectionEntryPage()