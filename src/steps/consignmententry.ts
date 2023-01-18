import { Given } from '@cucumber/cucumber';
import { When } from '@cucumber/cucumber';
import { Then } from '@cucumber/cucumber';


import ConsignmentEntry from '../pages/consignmententry';

var docketNumber: String;


When('I have set the account code as {string}', async function (accountCode) {
    await ConsignmentEntry.setAccountCode(accountCode);
});

When ('I have entered the {string} as my customer reference', async function (customerRef) {
    await ConsignmentEntry.setCustomerRef(customerRef);
}); 

When ('I have entered {string} as the postcode', async function (postCode) {
    await ConsignmentEntry.setPostcodeField(postCode);
});

When ('I have entered {string} as the consignee name', async function (consigneeName) {
    await ConsignmentEntry.setConsigneeName(consigneeName);
});

When ('I have entered {string} as the address field 1', async function (Address1) {
    await ConsignmentEntry.setAddressLine1(Address1);
});

When ('I have entered {string} as the address field 2', async function (Address2) {
    await ConsignmentEntry.setAddressLine2(Address2);
});

When ('I have entered {string} as the town', async function (Town) {
    await ConsignmentEntry.setTownField(Town);
});

When ('I have entered {string} as the county', async function (County) {
    await ConsignmentEntry.setCountyField(County);
});

When ('I have set {string} as the Delivery Service', async function (DelService) {
    await ConsignmentEntry.setDeliveryService(DelService);
});

When ('I have entered {string} as the Contact', async function (Contact) {
    await ConsignmentEntry.setContactField(Contact);
});

When ('I have entered {string} as the Telephone Number', async function (Phone) {
    await ConsignmentEntry.setTelephoneField(Phone);
});

When ('I have entered {string} as the Telephone Number 2', async function (Phone2) {
    await ConsignmentEntry.setTelephone2Field(Phone2);
});

When ('I have added {string} as the Pallet Type', async function (PalletType) {
    await ConsignmentEntry.setPalletType(PalletType);
});

When ('I have added {string} as the Quantity', async function (Quantity) {
    await ConsignmentEntry.setQuantityField(Quantity);
});

When ('I have set {string} for the weight', async function (PalletWeight) {
    await ConsignmentEntry.setWeightField(PalletWeight);
});

Then ('I click the Finish button', async function () {   
    await ConsignmentEntry.clickFinish();  
});

Then ('I see a success message', async function () {
    await ConsignmentEntry.isSuccessNotificationBoxPresent();
});

Then('I see an 8 digit docket number', async function () {
    docketNumber = await ConsignmentEntry.doesSuccessNotificationBoxContainEightDigitNumber();
});

When ('I enter {string} as my Pallet Width', async function (PalletWidth) {
    await ConsignmentEntry.setPalletWidth(PalletWidth);
});

When ('I enter {string} as my Pallet Depth', async function (PalletDepth) {
    await ConsignmentEntry.setPalletDepth(PalletDepth);
});

When ('I enter {string} as my Pallet Height', async function (PalletHeight) {
    await ConsignmentEntry.setPalletHeight(PalletHeight);
});

When ('I enter {string} as my XL Pallet Weight', async function (XLPalletWeight) {
    await ConsignmentEntry.setXLWeightField(XLPalletWeight);
});

When ('I tick the self delivery box', async function () {
    await ConsignmentEntry.clickSelfDeliveryField();
});

When ('I click the FVC button', async function () {   
    await ConsignmentEntry.clickFVCBtn();  
});

When ('I enter {string} as my Insured Name', async function (InsuredName) {
    await ConsignmentEntry.setInsuredNameField(InsuredName);
});

When ('I enter {string} as my Insured Email', async function (InsuredEmail) {
    await ConsignmentEntry.setInsuredEmailField(InsuredEmail);
});

When ('I enter {string} as my Insured Amount', async function (InsuredAmount) {
    await ConsignmentEntry.setInsuredAmountField(InsuredAmount);
});

When ('I click ok on the FVC approval', async function () {
    await ConsignmentEntry.clickFVCOkBtn();
});

When ('I click the Set Depot button', async function () {   
    await ConsignmentEntry.clickDeliverySetDepot();  
});

When ('I enter {string} as my Set Via Depot Number', async function (DepotNumber) {
    await ConsignmentEntry.setDeliveryDepotNumberList(DepotNumber);
});

When ('I enter {string} as my Set Via Depot Reason', async function (DepotReason) {
    await ConsignmentEntry.setDeliveryDepotChangeReason(DepotReason);
});

When ('I click the Set Depot Ok confirmation button', async function () {   
    await ConsignmentEntry.clickDeliverySetDepotOkBtn();  
});

When ('I click the 7.5 Tonne button', async function () {   
    await ConsignmentEntry.clickDeliveryTonneBtn();  
});

When ('I click the Red Label  button', async function () {   
    await ConsignmentEntry.clickDeliveryRedLabelBox();  
});

When ('I click the Limited Quantity button', async function () {   
    await ConsignmentEntry.clickLimitedQuantityBtn();  
});

When ('I enter {string} as the Limited Quantity', async function (LimitedQuantity) {
    await ConsignmentEntry.setLimitedQuantityBox(LimitedQuantity);
});

When ('I click the Limited Quantity Submit button', async function () {   
    await ConsignmentEntry.clickLimitedQuantitySubmitBtn();  
});

When ('I click the Own Paperwork button', async function () {   
    await ConsignmentEntry.clickCOPTickBox();  
});

When ('I upload the Own Paperwork File', async function () {
    await ConsignmentEntry.uploadCOPfile();
})

When ('I enter {string} as my Dedicated Time', async function (dedicatedTime) {
    await ConsignmentEntry.setDedicatedTime(dedicatedTime);
});

When ('I enter {string} as my Dedicated Day', async function (dedicatedDay) {
    await ConsignmentEntry.setDedicatedDay(dedicatedDay);
});

When ('I click the Cheque on delivery button', async function () {   
    await ConsignmentEntry.clickCODTickBox();  
});

When ('I click the Pallet and Wrap button', async function () {   
    await ConsignmentEntry.clickPAWTickBox();  
});

When ('I click the Retail Delivery button', async function () {   
    await ConsignmentEntry.clickRTDTickBox();  
});