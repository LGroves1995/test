import pressButton from '../support/action/pressButton';
import page from './page'


const basepath = require('path'); //this is for a file upload
class CollectionEntryBrexitPage extends page {

get collectionCustomsContactEmailField () { return $ ('//*[@id="CR_CustomsContactEmail"]')}
get collectionCommodityCodeField () { return $ ('//*[@id="CR_CommodityCode_0"]')}
get collectionInvoiceValueField () { return $ ('//*[@id="CR_InvoiceValue_0"]')}
get collectionNetWeightField () { return $ ('//*[@id="CR_NetWeight_0"]')}
get collectionGrossWeightField () { return $ ('//*[@id="CR_GrossWeight_0"]')}
get collectionPalletNumberField () { return $ ('//*[@id="CR_Pallets_0"]')}
get collectionDefermentField () { return $ ('//*[@id="CR_Account_Info"]/tbody/tr[3]/td[2]/span/span/span[1]')}
get collectionAccountDANField () { return $ ('//*[@id="CR_header_accountNumber"]')}
get collectionFOBValueField () { return $ ('//*[@id="CR_Account_Info"]/tbody/tr[5]/td[2]/span/span/input[1]')}
get collectionInvoiceNumberField () { return $ ('//*[@id="CR_header_commInvoice"]')}
get collectionIncoTermsField () { return $ ('//*[@id="CR_rowInvoiceTerms"]/td[2]/span/span/span[1]')}
get collectionuploadCommercialInvoiceField () { return $ ('//*[@id="CR_UploadCustomsDocument_1"]')}
get collectionuploadTransportDocumentField () { return $ ('//*[@id="CR_UploadCustomsDocument_2"]')}
get collectionInvoiceCurrencyField () { return $ ('//*[@id="CR_Account_Info"]/tbody/tr[6]/td[4]/span/span/span[1]')}
get collectionExporterEORIField () { return $ ('//*[@id="CR_fromCompany_eori"]')}
get collectionImporterEORIField () { return $ ('//*[@id="CR_toCompany_eori"]')}
get collectionImporterPostcodeField () { return $ ('//*[@id="CR_toCompany_postcodeZip"]')}
get collectionDirectRepresentationDocumentField () { return $ ('//*[@id="CR_UploadCustomsDocument_16"]')}
get collectionLicensingBox () { return $ ('//*[@id="CR_chkLicenseAccept"]')}
get collectionDeclarationBox () { return $ ('//*[@id="CR_chkDeclaration"]')}
get collectionCustomsFinishBtn () { return $ ('//*[@id="CR_customs_submit"]')}

//Collection Customs Email
async setCRCustomsEmail (CRCustomsEmail) {
    await this.collectionCustomsContactEmailField.click();
    await this.collectionCustomsContactEmailField.setValue(CRCustomsEmail);
    await pressButton("Tab"); 
}

//Collection Customs Commodity Code
async setCRCommodityCode (CRCommodityCode) {
    await this.collectionCommodityCodeField.click();
    await this.collectionCommodityCodeField.setValue(CRCommodityCode);
    await pressButton("Tab"); 
}

//Collection Customs Invoice Value 
async setCRInvoiceValue (CRInvoiceValue) {
    await this.collectionInvoiceValueField.click();
    await this.collectionInvoiceValueField.setValue(CRInvoiceValue);
    await pressButton("Tab"); 
}

//Collection Customs Net Weight
async setCRNetWeight (CRNetWeight) {
    await this.collectionNetWeightField.click();
    await this.collectionNetWeightField.setValue(CRNetWeight);
    await pressButton("Tab"); 
}

//Collection Customs Gross Weight
async setCRGrossWeight (CRGrossWeight) {
    await this.collectionGrossWeightField.click();
    await this.collectionGrossWeightField.setValue(CRGrossWeight);
    await pressButton("Tab"); 
}

//Collection Customs Pallet Number
async setCRPalletNumber (CRPalletNumber) {
    await this.collectionPalletNumberField.click();
    await this.collectionPalletNumberField.setValue(CRPalletNumber);
    await pressButton("Tab"); 
}

//Collection Customs Deferment Type
async setCRDefermentType (CRDefermentType) {
    await browser.pause(5000);
    await this.collectionDefermentField.click();
    await this.collectionDefermentField.waitForDisplayed
    await this.collectionDefermentField.setValue(CRDefermentType);
    await this.collectionDefermentField.waitForDisplayed
    await pressButton("Enter");
    await pressButton("Tab")
    await browser.pause(5000);
}

//Collection Customs Account/DAN 
async setCRAccountDAN (CRAccountDAN) {
    await this.collectionAccountDANField.click();
    await this.collectionAccountDANField.setValue(CRAccountDAN);
    await pressButton("Tab"); 
}

//Collection Customs FOB Value 
async setCRFOBValue (CRFOBValue) {
    await this.collectionFOBValueField.setValue(CRFOBValue);
    await pressButton("Tab"); 
}

//Collection Customs Invoice Number
async setCRInvoiceNumber (CRInvoiceNumber) {
    await this.collectionInvoiceNumberField.click();
    await this.collectionInvoiceNumberField.setValue(CRInvoiceNumber);
    await pressButton("Tab")
}

//Collection Customs Inco Terms 
async setCRIncoTerms (CRIncoTerms) {
    await browser.pause(5000);
    await this.collectionIncoTermsField.click();
    await this.collectionIncoTermsField.waitForDisplayed
    await this.collectionIncoTermsField.setValue(CRIncoTerms);
    await this.collectionIncoTermsField.waitForDisplayed
    await pressButton("Enter");
    await pressButton("Tab")
    await browser.pause(5000);
}

//Collection Customs Commercial Invoice
async collectionuploadCommercialInvoice () {
    const filePath = basepath.join(__dirname, '../data/testImageFile.jpg');
    await this.collectionuploadCommercialInvoiceField.setValue(filePath)
    await browser.pause(3000);
}

//Collection Customs Transport Document
async collectionuploadTransportDocument () {
    const filePath = basepath.join(__dirname, '../data/testImageFile.jpg');
    await this.collectionuploadTransportDocumentField.setValue(filePath)
    await browser.pause(3000);
}

//Collection Customs Inco Terms 
async setCRCurrency (CRCurrency) {
    await browser.pause(5000);
    await this.collectionInvoiceCurrencyField.click();
    await this.collectionInvoiceCurrencyField.waitForDisplayed
    await this.collectionInvoiceCurrencyField.setValue(CRCurrency);
    await this.collectionInvoiceCurrencyField.waitForDisplayed
    await pressButton("Enter");
    await pressButton("Tab")
    await browser.pause(5000);
}

//Collection Exporter EORI 
async setCRExporterEORI (CRExporterEORI) {
    await this.collectionExporterEORIField.click();
    await this.collectionExporterEORIField.setValue(CRExporterEORI);
    await pressButton("Tab")
    await browser.pause(3000);
} 

//Collection Importer EORI 
async setCRImporterEORI (CRImporterEORI) {
    await this.collectionImporterEORIField.click();
    await this.collectionImporterEORIField.setValue(CRImporterEORI);
    await pressButton("Tab")
    await browser.pause(3000);
}

//Collection Importer EORI 
async setCRImporterPostcode (CRImporterPostcode) {
    await this.collectionImporterPostcodeField.click();
    await this.collectionImporterPostcodeField.setValue(CRImporterPostcode);
    await pressButton("Tab")
} 

//Collection Direct Representation Document 
async collectionuploadDirectRepresentation () {
    const filePath = basepath.join(__dirname, '../data/testImageFile.jpg');
    await this.collectionDirectRepresentationDocumentField.setValue(filePath)
    await browser.pause(3000);
}

//Collection Customs Goods Licensing
async clickCRCustomsGoodslicensing () {
    await this.collectionLicensingBox.click();
    await pressButton ("Tab");
}

//Collection Customs Declaration
async clickCRCustomsDeclaration () {
    await this.collectionDeclarationBox.click();
    await pressButton ("Tab");
}

//Collection Customs Finish 
async clickCRCustomsFinish () {
    await this.collectionCustomsFinishBtn.click();
    await pressButton ("Tab");
}

}
export default new CollectionEntryBrexitPage()