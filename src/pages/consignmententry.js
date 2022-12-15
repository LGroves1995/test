import pressButton from '../support/action/pressButton';
import page from './page'


const basepath = require('path'); //this is for a file upload
class ConsignmentEntryPage extends page {

get accountCodeField () { return $ ('input[id="CE_ConsignorCode"]') }
get accountCodeList () { return $ ('#CE_ConsignorCode-list') }
get customerRefBox () { return $ ('#CE_CustomerReference') }
get postcodeField () { return $ ('//*[@id="CE_DeliveryPostCode"]') }
get consigneeNameField () { return $ ('//*[@id="CE_DeliveryConsigneeName"]') }
get addressLine1Field () {return $ ('#CE_DeliveryAddress1') }
get addressLine2Field () {return $ ('#CE_DeliveryAddress2') }
get townField () {return $ ('//*[@id="CE_DeliveryTown"]') }
get countyField () {return $ ('//*[@id="CE_DeliveryCounty"]') }
get deliveryServiceList () { return $ ('//*[@id="CE_DeliveryDetails"]/table/tbody/tr[2]/td[4]/span[1]/span') }
get contactField () {return $ ('//*[@id="CE_DeliveryContact"]') }
get telephoneField () { return $ ('//*[@id="CE_DeliveryTelephone"]') }
get telephone2Field () { return $ ('input[id="CE_DeliveryTelephone2"]') }
get palletTypeField () {return $ ('//*[@id="CE_PalletDetails"]/table/tbody/tr/td[2]/span/span/span[1]') }
get quantityField () { return $ ('//*[@id="CE_PalletDetails"]/table/tbody/tr/td[4]/span/span/input[1]') }
get weightField () {return $ ('//*[@id="CE_PalletDetails"]/table/tbody/tr/td[6]/span/span/input[1]') }
get finishbtn () {return $ ('#CE_CreateConsignment') }
get successNotificationTextBox () { return $(".notification-success > h3") }
get palletWidthField () { return $ ('//*[@id="CE_PalletDetailsXL"]/table/tbody/tr[2]/td[2]/span/span/input[1]') }
get palletDepthField () { return $ ('//*[@id="CE_PalletDetailsXL"]/table/tbody/tr[2]/td[4]/span/span/input[1]') }
get palletHeightField () { return $ ('//*[@id="CE_PalletDetailsXL"]/table/tbody/tr[2]/td[6]/span/span/input[1]') }
get xlPalletWeightField () { return $ ('//*[@id="CE_PalletDetailsXL"]/table/tbody/tr[2]/td[8]/span/span/input[1]') }
get selfDeliveryTickBox () {return $ ('//*[@id="CE_SelfDelivery"]') }
get FVCBtn () {return $ ('//*[@id="CE_showfvc"]') }
get insuredNameField () { return $ ('input[id="CE_fvcInsuredName"]') }
get insuredEmailField () { return $ ('//*[@id="CE_fvcInsuredEmail"]') }
get insuredAmountField () { return $ ('//*[@id="CE_FVCWindow"]/div/table/tbody/tr[2]/td[2]/span[1]/span/input[1]') }
get FVCOkBtn () { return $ ('#CE_submitfvc') }
get deliverySetViaDepotBtn () { return $ ('//*[@id="CE_viaDepot"]') }
get deliverySetDepotNumber () { return $ ('span[aria-owns="CE_vd_selector_listbox"]') }
get deliverySetDepotReason () { return $ ('#CE_viaDepotReason') }
get deliverySetDepotOkBtn () { return $ ('#CE_submitvd') }
get deliveryTonneBtn () { return $ ('#CE_SevenHalfTonne') }
get redLabelBox () { return $ ('#CE_RedLabel')}
get limitedQuantityBtn () { return $ ('#CE_LimitedQuantity')}
get limitedQuantityTxtBox () { return $ ('//*[@id="CE_UNNumberInput"]')}
get limitedQuantitySubmitBtn () { return $ ('#CE_UNNumberButton')}
get copTickBox() { return $ ('//*[@id="CE_OwnPaperwork"]')}
get copUploadButton () { return $ ('//*[@id="CopImageFilesFromConsignmentEntry"]')} 
get dedicatedTimeField () { return $ ('input[id="CE_DeliveryDedicatedTime"]')}
get dedicatedDayField () { return $ ('input[id="CE_DeliveryDedicatedDate"]')}

//Account Code Field
async setAccountCode (accountCode) {
    await browser.pause(3000);
    await this.accountCodeField.click();
    await this.accountCodeField.waitForDisplayed();
    await this.accountCodeField.setValue(accountCode);
    await this.accountCodeList.waitForDisplayed();
    await pressButton("ArrowDown");
    await pressButton("Enter");
    await pressButton("Tab");
}

//Customer Reference  Field
async setCustomerRef (customerRef) {
    await this.customerRefBox.click();
    await this.customerRefBox.setValue(customerRef);
    await pressButton("Tab");
    await browser.pause(3000);
}

//Postcode Field
async setPostcodeField (postCode) {
    await this.postcodeField.click();
    await this.postcodeField.setValue(postCode);
    await pressButton("Tab");
} 

//Consignee Name Field
async setConsigneeName (consigneeName) {
    await this.consigneeNameField.click();
    await this.consigneeNameField.setValue(consigneeName);
    await pressButton("Tab"); 
}

//Address Line 1 Field
async setAddressLine1 (Address1) {
    await this.addressLine1Field.click(); 
    await this.addressLine1Field.setValue(Address1);
    await pressButton("Tab"); 
}

//Address Line 2 Field
async setAddressLine2 (Address2) {
    await this.addressLine2Field.click();
    await this.addressLine2Field.setValue(Address2);
    await pressButton("Tab");
    
}

//Town Field
async setTownField (Town) {
    await this.townField.click();
    await this.townField.setValue(Town);
    await pressButton("Tab");
}

//County Field
async setCountyField (County) {
    await this.countyField.click();
    await this.countyField.setValue(County);
    await pressButton("Tab");
    await browser.pause(5000);    
}

//Delivery Service Field
async setDeliveryService (DelService) {
    await this.deliveryServiceList.click();
    await this.deliveryServiceList.waitForDisplayed();
    await this.deliveryServiceList.setValue(DelService);
    await this.deliveryServiceList.waitForDisplayed();
    await pressButton ("Enter");
    await pressButton ("Tab");
    await browser.pause(2000);
}

//Contact Name Field
async setContactField (Contact) {
    await this.contactField.click();
    await this.contactField.setValue(Contact);
    await pressButton("Tab");
}

//Telephone Number Field
async setTelephoneField (Phone) {
    await this.telephoneField.click();
    await this.telephoneField.setValue(Phone);
    await pressButton("Tab");
}

//Telephone Number 2 Field
async setTelephone2Field (Phone2) {
    await this.telephone2Field.click();
    await this.telephone2Field.setValue(Phone2);
    await pressButton("Tab");
}

//Pallet Type Field
async setPalletType (PalletType) {
    await this.palletTypeField.click();
    await this.palletTypeField.waitForDisplayed();
    await this.palletTypeField.setValue(PalletType);
    await this.palletTypeField.waitForDisplayed();
    await pressButton ("Enter");
    await pressButton ("Tab");
    await browser.pause (5000);
}

//Quantity Field
async setQuantityField (Quantity) {
    await this.quantityField.click();
    await this.quantityField.setValue(Quantity);
    await pressButton("Tab");
}

//Standard Pallet Entry Weight Field
async setWeightField (PalletWeight) {
    await this.weightField.setValue(PalletWeight);
    await pressButton("Tab");
    await browser.pause(3000);
}

//Consignment Finish Button
async clickFinish () {
    await this.finishbtn.click();
    await browser.pause(5000);
}

//Successful Entry Value
async isSuccessNotificationBoxPresent() {
    await this.successNotificationTextBox.waitForDisplayed();
    await expect(this.successNotificationTextBox).toBePresent();
}

//Cosignment Number Retrieval 
// The expected message is string is "Consignment number 68648933 has been created successfully."
// Extract the number)
async doesSuccessNotificationBoxContainEightDigitNumber() {
    var numberStartIndex = 19;
    var digits = 8;
    var messageText = await this.successNotificationTextBox.getText();
    console.log("The message found is: " + messageText);
    // Check the number
    var messageNumber = messageText.substring(numberStartIndex, numberStartIndex+digits);
    console.log("The number found is: " + messageNumber);
    await expect(Number.isInteger(Number.parseInt(messageNumber)));
    return messageNumber;
}

//XL Pallet Width Field
async setPalletWidth(PalletWidth) {
    await this.palletWidthField.click();
    await this.palletWidthField.setValue(PalletWidth);
    await pressButton("Tab"); 
}

//XL Pallet Depth Field
async setPalletDepth(PalletDepth) {
    await this.palletDepthField.setValue(PalletDepth);
    await pressButton("Tab"); 
}

//XL Pallet Height Field
async setPalletHeight(PalletHeight) {
    await this.palletHeightField.setValue(PalletHeight);
    await pressButton("Tab"); 
}

//XL Pallet Weight 
async setXLWeightField (XLPalletWeight) {
    await this.xlPalletWeightField.setValue(XLPalletWeight);
    await pressButton("Tab");
    await pressButton("Tab");
}

//Self Delivery Box
async clickSelfDeliveryField () {
    await this.selfDeliveryTickBox.click();
}

//FVC Button
async clickFVCBtn () {
    await this.FVCBtn.click();
}

//Insurered Name Field (FVC)
async setInsuredNameField (InsuredName) {
    await this.insuredNameField.setValue(InsuredName);
    await pressButton ("Tab");
}

//Insured Email Field (FVC)
async setInsuredEmailField (InsuredEmail) {
    await this.insuredEmailField.setValue(InsuredEmail)
    await pressButton("Tab");
}

//Insured Amount (FVC)
async setInsuredAmountField (InsuredAmount) {
    await this.insuredAmountField.setValue(InsuredAmount);
    await pressButton("Enter");
}

//FVC Ok Button
async clickFVCOkBtn () {
    await browser.pause (3000);
    await this.FVCOkBtn.click();
    await browser.pause (3000);
}

//DeliverySetViaDepot Button
async clickDeliverySetDepot () {
    await this.deliverySetViaDepotBtn.waitForDisplayed();
    await this.deliverySetViaDepotBtn.click();
}

//DeliverySetDepotNumber
async setDeliveryDepotNumberList (DepotNumber) {
    await browser.pause(1000);
    await this.deliverySetDepotNumber.click();
    await this.deliverySetDepotNumber.setValue(DepotNumber);
    await pressButton ("Enter");
}

//DeliverySetDepotNumberReason
async setDeliveryDepotChangeReason (DepotReason) {
    await this.deliverySetDepotReason.click();
    await this.deliverySetDepotReason.setValue(DepotReason);
} 

//DeliverySetDepotOkButton 
async clickDeliverySetDepotOkBtn () {
    await this.deliverySetDepotOkBtn.click();
}

//7.5 Tonne Button
async clickDeliveryTonneBtn () {
    await this.deliveryTonneBtn.click();
}

//Red Label TickBox
async clickDeliveryRedLabelBox () {
    await this.redLabelBox.waitForDisplayed();
    await this.redLabelBox.click();
}

//Limited Quantity Button
async clickLimitedQuantityBtn () {
    await this.limitedQuantityBtn.click();
}

//Limited Quantity Text Box
async setLimitedQuantityBox (LimitedQuantity) {
    await this.limitedQuantityTxtBox.click();
    await this.limitedQuantityTxtBox.setValue(LimitedQuantity)
}

//Limited Quantity Submit Button
async clickLimitedQuantitySubmitBtn () {
    await browser.pause (3000);
    await this.limitedQuantitySubmitBtn.click();
    await browser.pause(3000);
}

//COP Tick Box 
async clickCOPTickBox () {
    await browser.pause (1000);
    await this.copTickBox.click();
}

//COP File Upload
async uploadCOPfile () {
    const filePath = basepath.join(__dirname, '../data/testImageFile.jpg');
    await this.copUploadButton.setValue(filePath);
    await browser.pause(5000);
}

//Dedicated Time 
async setDedicatedTime (dedicatedTime) {
    await this.dedicatedTimeField.waitForDisplayed();
    await this.dedicatedTimeField.click();
    await this.dedicatedTimeField.setValue(dedicatedTime)
    await pressButton ("Tab");
}

//Dedicated Day
async setDedicatedDay (dedicatedDay) {
    await this.dedicatedDayField.waitForDisplayed();
    await this.dedicatedDayField.click();
    await this.dedicatedDayField.setValue(dedicatedDay);
    await pressButton ("Tab");
}

}
export default new ConsignmentEntryPage()