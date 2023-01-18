import { Given } from '@cucumber/cucumber';
import { When } from '@cucumber/cucumber';
import { Then } from '@cucumber/cucumber';


import collectionentryBrexit from '../pages/collectionentryBrexit';

When('I have set the CR Customs Email as {string}', async function (CRCustomsEmail) {
    await collectionentryBrexit.setCRCustomsEmail(CRCustomsEmail);
});

When('I have set the CR Commodity Code as {string}', async function (CRCommodityCode) {
    await collectionentryBrexit.setCRCommodityCode(CRCommodityCode);
});

When('I have set the CR Invoice Value as {string}', async function (CRInvoiceValue) {
    await collectionentryBrexit.setCRInvoiceValue(CRInvoiceValue);
});

When('I have set the CR Net Weight as {string}', async function (CRNetWeight) {
    await collectionentryBrexit.setCRNetWeight(CRNetWeight);
});

When('I have set the CR Gross Weight as {string}', async function (CRGrossWeight) {
    await collectionentryBrexit.setCRGrossWeight(CRGrossWeight);
});

When('I have set the CR Number of Pallets as {string}', async function (CRPalletNumber) {
    await collectionentryBrexit.setCRPalletNumber(CRPalletNumber);
});

When('I have set the CR Deferment Type as {string}', async function (CRDefermentType) {
    await collectionentryBrexit.setCRDefermentType(CRDefermentType);
});

When('I have set the CR AccountDAN as {string}', async function (CRAccountDAN) {
    await collectionentryBrexit.setCRAccountDAN(CRAccountDAN);
});

When('I have set the CR FOB Value as {string}', async function (CRFOBValue) {
    await collectionentryBrexit.setCRFOBValue(CRFOBValue);
});

When('I have set the CR Invoice Number as {string}', async function (CRInvoiceNumber) {
    await collectionentryBrexit.setCRInvoiceNumber(CRInvoiceNumber);
});

When('I have set the CR Inco Terms as {string}', async function (CRIncoTerms) {
    await collectionentryBrexit.setCRIncoTerms(CRIncoTerms);
});

When('I have set the CR Invoice Currency as {string}', async function (CRCurrency) {
    await collectionentryBrexit.setCRCurrency(CRCurrency);
});

When('I have uploaded the Collection Commericial Invoice', async function () {
    await collectionentryBrexit.collectionuploadCommercialInvoice();
});

When('I have uploaded the Collection Transport Document', async function () {
    await collectionentryBrexit.collectionuploadTransportDocument();
});

When('I have set the CR Exporter EORI as {string}', async function (CRExporterEORI) {
    await collectionentryBrexit.setCRExporterEORI(CRExporterEORI);
});

When('I have set the CR Importer EORI as {string}', async function (CRImporterEORI) {
    await collectionentryBrexit.setCRImporterEORI(CRImporterEORI);
});

When('I have set the CR Importer Postcode as {string}', async function (CRImporterPostcode) {
    await collectionentryBrexit.setCRImporterPostcode(CRImporterPostcode);
});

When('I have uploaded the Collection Direct Representation', async function () {
    await collectionentryBrexit.collectionuploadDirectRepresentation();
});

When('I have clicked Customs Goods Licensing', async function () {
    await collectionentryBrexit.clickCRCustomsGoodslicensing();
});

When('I have clicked Customs Declaration', async function () {
    await collectionentryBrexit.clickCRCustomsDeclaration();
});

When('I have clicked the Customs Finish', async function () {
    await collectionentryBrexit.clickCRCustomsFinish();
});