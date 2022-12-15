import { Given } from '@cucumber/cucumber';
import { When } from '@cucumber/cucumber';
import { Then } from '@cucumber/cucumber';

import LoginPage from '../pages/login.page'
import LandingPage from '../pages/landing.page';
import ConsignmentEntry from '../pages/consignmententry';
import ConsignmentEntryBrexit from '../pages/consignmententryBrexit';


When('I have set Clearance Export button as No', async function () {
    await ConsignmentEntryBrexit.setClearanceExportBox();
});

When('I have entered {string} as my Export MRN Number', async function (exportMRN) {
    await ConsignmentEntryBrexit.setExportMRNBox(exportMRN);
});

When('I have set Clearance Import button as No', async function () {
    await ConsignmentEntryBrexit.setClearanceImportBox();
});

When('I have entered {string} as my Import MRN Number', async function (importMRN) {
    await ConsignmentEntryBrexit.setImportMRNBox(importMRN);
});

When ('I have set {string} as my customs customer email', async function (cusomsCustomerEmail) {
    await ConsignmentEntryBrexit.setCustomsCustomerEmail(cusomsCustomerEmail);
});

When ('I have set {string} as my commodity code', async function (commodityCode) {
    await ConsignmentEntryBrexit.setCommodityCodeField(commodityCode);
});

When ('I have set {string} as my invoice value', async function (invoiceValue) {
    await ConsignmentEntryBrexit.setInvoiceValue(invoiceValue);
});

When ('I have set {string} as my net weight', async function (netWeight) {
    await ConsignmentEntryBrexit.setNetWeight(netWeight);
});

When ('I have set {string} as my gross weight', async function (grossWeight) {
    await ConsignmentEntryBrexit.setGrossWeight(grossWeight);
});

When ('I have set {string} as my number of pallets', async function (numberPallets) {
    await ConsignmentEntryBrexit.setNumberPallets(numberPallets);
});

When ('I have set {string} as my deferment type', async function (defermentType) {
    await ConsignmentEntryBrexit.setDefermentType(defermentType);
});

When ('I have set {string} as my account DAN', async function (accountDAN) {
    await ConsignmentEntryBrexit.setAccountDAN(accountDAN);
});

When ('I have set {string} as my fob value', async function (fobValue) {
    await ConsignmentEntryBrexit.setFOB(fobValue);
});

When ('I have set {string} as my invoice number', async function (invoiceNumber) {
    await ConsignmentEntryBrexit.setInvoiceNumber(invoiceNumber);
});

When ('I have set {string} as my inco terms', async function (incoTerms) {
    await ConsignmentEntryBrexit.setIncoTerms(incoTerms);
});

When ('I upload the commerical invoice', async function () {
    await ConsignmentEntryBrexit.uploadCommercialInvoice();
});

When ('I upload the transport document', async function () {
    await ConsignmentEntryBrexit.uploadTransportDocument();
});

When ('I have set {string} as my exporter EORI', async function (exporterEORI) {
    await ConsignmentEntryBrexit.setExporterEORI(exporterEORI);
});

When ('I have set {string} as my importer EORI', async function (importerEORI) {
    await ConsignmentEntryBrexit.setImporterEORI(importerEORI);
});

When ('I have set {string} as my importer postcode', async function (importerPostcode) {
    await ConsignmentEntryBrexit.setImporterPostcode(importerPostcode);
});

When ('I upload the representation doucment', async function () {
    await ConsignmentEntryBrexit.uploadRepresentationDocument();
});

When ('I click the goods licensing box', async function () {
    await ConsignmentEntryBrexit.clickLicensingGoods();
})

When ('I click the goods declaration box', async function () {
    await ConsignmentEntryBrexit.clickDeclaration();
})

When ('I click the submit and complete button', async function () {
    await ConsignmentEntryBrexit.clickSubmitComplete();
})