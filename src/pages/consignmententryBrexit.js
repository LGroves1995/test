import pressButton from '../support/action/pressButton';
import page from './page'

const basepath = require('path'); //this is for a file upload
class ConsignmentEntryBrexit extends page {

get clearanceExportBox () { return $ ('#CE_radioTPNCustomsExport_2')}
get exportMRNBox () { return $ ('#CE_request_exportCustomsMovementRef')}
get clearanceImportBox () { return $ ('#CE_radioTPNCustomsImport_2')}
get importMRNBox () { return $ ('#CE_request_importCustomsMovementRef')}
get customsCustomerEmail () { return $ ('#CE_CustomsContactEmail')}
get commodityCodeBox () { return $ ('#CE_CommodityCode_0')}
get invoiceValueField () { return $ ('#CE_InvoiceValue_0')}
get netWeightField () { return $ ('#CE_NetWeight_0')}
get grossWeightField () { return $ ('#CE_GrossWeight_0')}
get numberPalletsField () { return $ ('#CE_Pallets_0')}
get defermenttypeList () { return $ ('//*[@id="CE_Account_Info"]/tbody/tr[3]/td[2]/span/span/span[1]')}
get accountDANField () { return $ ('input[id="CE_header_accountNumber"]')}
get fobField () { return $ ('//*[@id="CE_Account_Info"]/tbody/tr[5]/td[2]/span/span/input[1]')}
get invoiceNumberField () { return $ ('#CE_header_commInvoice')}
get incoTermsList () { return $ ('//*[@id="CE_rowInvoiceTerms"]/td[2]/span/span/span[1]')}
get uploadCommercialInvoiceField () { return $ ('#CE_UploadCustomsDocument_1')}
get uploadTransportDocumentField (){ return $ ('input[id="CE_UploadCustomsDocument_2"]')}
get exporterEORIField () { return $ ('input[id="CE_fromCompany_eori"]')}
get importerEORIField () { return $ ('input[id="CE_toCompany_eori"]')}
get importerPostcodeField () { return $ ('#CE_toCompany_postcodeZip')}
get uploadRepresentationDocumentField () { return $ ('input[id="CE_UploadCustomsDocument_16"]')}
get licensingGoodsBox () { return $ ('input[id="CE_chkLicenseAccept"]')}
get declarationBox () { return $ ('input[id="CE_chkDeclaration"]')}
get submitCompleteBtn () { return $ ('input[id="CE_customs_submit"]')}

//Customs Clearance Export Box
async setClearanceExportBox () {
    await browser.pause (3000);
    await this.clearanceExportBox.click();
    await pressButton("Tab")
}

//Export MRN Box
async setExportMRNBox (exportMRN) {
    await this.exportMRNBox.click();
    await this.exportMRNBox.setValue(exportMRN);
    await pressButton ("Tab");
}

//Customs Clearance Import Box
async setClearanceImportBox () {
    await browser.pause (3000);
    await this.clearanceImportBox.click();
    await pressButton("Tab")
}

//Import MRN Box
async setImportMRNBox (importMRN) {
    await this.importMRNBox.click();
    await this.importMRNBox.setValue(importMRN);
    await pressButton ("Tab");
}

//Customs Customer Email 
async setCustomsCustomerEmail (customsCustomerEmail) {
    await this.customsCustomerEmail.click();
    await this.customsCustomerEmail.setValue(customsCustomerEmail);
    await pressButton ("Tab");
}

//Commodity Code Field
async setCommodityCodeField (commodityCode) {
    await this.commodityCodeBox.click();
    await this.commodityCodeBox.setValue(commodityCode);
    await pressButton ("Tab");
}

//Invoice Value 
async setInvoiceValue (invoiceValue) {
    await this.invoiceValueField.click();
    await this.invoiceValueField.setValue(invoiceValue);
    await pressButton ("Tab");

}

//Net Weight 
async setNetWeight (netWeight) {
    await this.netWeightField.click();
    await this.netWeightField.setValue(netWeight);
    await pressButton ("Tab");
}

//Gross Weight 
async setGrossWeight (grossWeight) {
    await this.grossWeightField.click();
    await this.grossWeightField.setValue(grossWeight);
    await pressButton ("Tab");
}

//Number of Pallets
async setNumberPallets (numberPallets) {
    await this.numberPalletsField.click();
    await this.numberPalletsField.setValue(numberPallets);
    await pressButton ("Tab");
}

//Deferment Type Drop Down
async setDefermentType (defermentType) {
    await this.defermenttypeList.click();
    await this.defermenttypeList.waitForDisplayed();
    await this.defermenttypeList.setValue (defermentType);
    await this.defermenttypeList.waitForDisplayed();
    await pressButton ("Enter");
    await pressButton ("Tab");
    await browser.pause(3000);
}

//Account/DAN Number
async setAccountDAN (accountDAN) {
    await this.accountDANField.click();
    await this.accountDANField.setValue(accountDAN);
    await pressButton("Tab");
}

//FOB Field
async setFOB (fobValue) {
    await this.fobField.setValue(fobValue);
    await pressButton ("Tab");
}

//Invoice Number 
async setInvoiceNumber (invoiceNumber) {
    await this.invoiceNumberField.click();
    await this.invoiceNumberField.setValue(invoiceNumber);
    await pressButton ("Tab");
}

//Inco Terms 
async setIncoTerms (incoTerms) {
    await this.incoTermsList.click();
    await this.incoTermsList.waitForDisplayed();
    await this.incoTermsList.setValue(incoTerms);
    await this.incoTermsList.waitForDisplayed();
    await pressButton ("Enter");
    await pressButton("Tab");
    await browser.pause(3000);
}

//Upload Commercial Invoice 
async uploadCommercialInvoice () {
    const filePath = basepath.join(__dirname, '../data/testImageFile.jpg');
    await this.uploadCommercialInvoiceField.setValue(filePath)
    await browser.pause(3000);
}

//Upload Transport Document 
async uploadTransportDocument () {
    const filePath = basepath.join(__dirname, '../data/testImageFile.jpg');
    await this.uploadTransportDocumentField.setValue(filePath)
    await browser.pause(3000);
}

//Exporter EORI 
async setExporterEORI (exporterEORI) {
    await this.exporterEORIField.click();
    await this.exporterEORIField.setValue(exporterEORI);
    await pressButton ("Tab");
}

//Importer EORI
async setImporterEORI (importerEORI) {
    await this.importerEORIField.click();
    await this.importerEORIField.setValue(importerEORI);
    await pressButton ("Tab");
}

//Importer Postcode 
async setImporterPostcode (importerPostcode) {
    await this.importerPostcodeField.click();
    await this.importerPostcodeField.setValue(importerPostcode);
    await pressButton ("Tab");
}

//Upload Importer Representation Document
async uploadRepresentationDocument () {
    const filePath = basepath.join(__dirname, '../data/testImageFile.jpg');
    await this.uploadRepresentationDocumentField.setValue(filePath);
    await browser.pause(3000);
}

//Licensing Goods
async clickLicensingGoods () {
    await this.licensingGoodsBox.click();
}

//Declaration
async clickDeclaration () {
    await this.declarationBox.click();
}

//Submit and Complete
async clickSubmitComplete () {
    await this.submitCompleteBtn.click();
    await pressButton ("Tab");
}

}
export default new ConsignmentEntryBrexit()