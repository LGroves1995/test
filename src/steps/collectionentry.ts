import { Given } from '@cucumber/cucumber';
import { When } from '@cucumber/cucumber';
import { Then } from '@cucumber/cucumber';


import CollectionEntry from '../pages/collectionentry';


When('I have set the Collection Account Code as {string}', async function (CRAccountCode) {
    await CollectionEntry.setCRAccountCode(CRAccountCode);
});

When('I have set the Collection Customer Ref as {string}', async function (CRCustomerRef) {
    await CollectionEntry.setCRCustomerRef(CRCustomerRef);
});

When('I have set the Collection Postcode as {string}', async function (CRPostcode) {
    await CollectionEntry.setCRPostcode(CRPostcode);
});

When('I have set the Consignor as {string}', async function (Consignor) {
    await CollectionEntry.setCosignorField(Consignor);
});

When('I have set the Collection Address 1 as {string}', async function (CRAddress1) {
    await CollectionEntry.setCRAddress1(CRAddress1);
});

When('I have set the Collection Address 2  as {string}', async function (CRAddress2) {
    await CollectionEntry.setCRAddress2(CRAddress2);
});

When('I have set the Collection Town as {string}', async function (CRTown) {
    await CollectionEntry.setCRTown(CRTown);
});

When('I have set the Collection County as {string}', async function (CRCounty) {
    await CollectionEntry.setCRCounty(CRCounty);
});

When('I have set the Collection Service as {string}', async function (CRService) {
    await CollectionEntry.setCRService(CRService);
});

When('I have set the Collection Contact as {string}', async function (CRContact) {
    await CollectionEntry.setCRContact(CRContact);
});

When('I have set the Collection Phone 1 as {string}', async function (CRPhone1) {
    await CollectionEntry.setCRPhone1(CRPhone1);
});

When('I have set the Collection Phone 2 as {string}', async function (CRPhone2) {
    await CollectionEntry.setCRPhone2(CRPhone2);
});

When('I have set the Collection Email as {string}', async function (CREmail) {
    await CollectionEntry.setCREmail(CREmail);
});

When('I have set the CR Delivery Postcode as {string}', async function (CRDeliveryPostcode) {
    await CollectionEntry.setCRDeliveryPostcode(CRDeliveryPostcode);
});

When('I have set the CR Consignee as {string}', async function (CRConsignee) {
    await CollectionEntry.setCRConsigneeField(CRConsignee);
});

When('I have set the CR Delivery Address 1 as {string}', async function (CRDeliveryAddress1) {
    await CollectionEntry.setCRDeliveryAddress1(CRDeliveryAddress1);
});

When('I have set the CR Delivery Address 2 as {string}', async function (CRDeliveryAddress2) {
    await CollectionEntry.setCRDeliveryAddress2(CRDeliveryAddress2);
});

When('I have set the CR Delivery Town as {string}', async function (CRDeliveryTown) {
    await CollectionEntry.setCRDeliveryTown(CRDeliveryTown);
});

When('I have set the CR Delivery County as {string}', async function (CRDeliveryCounty) {
    await CollectionEntry.setCRDeliveryCounty(CRDeliveryCounty);
});

When('I have set the CR Delivery Service as {string}', async function (CRDeliveryService) {
    await CollectionEntry.setCRDeliveryService(CRDeliveryService);
});

When('I have set the CR Delivery Contact as {string}', async function (CRDeliveryContact) {
    await CollectionEntry.setCRDeliveryContact(CRDeliveryContact);
});

When('I have set the CR Delivery Phone 1 as {string}', async function (CRDeliveryPhone1) {
    await CollectionEntry.setCRDeliveryPhone1(CRDeliveryPhone1);
});

When('I have set the CR Delivery Phone 2 as {string}', async function (CRDeliveryPhone2) {
    await CollectionEntry.setCRDeliveryPhone2(CRDeliveryPhone2);
});

When('I have set the CR Delivery Email as {string}', async function (CRDeliveryEmail) {
    await CollectionEntry.setCRDeliveryEmail(CRDeliveryEmail);
});

When('I have set the CR Pallet Type as {string}', async function (CRPalletType) {
    await CollectionEntry.setCRPalletType(CRPalletType);
});

When('I have set the CR Quantity as {string}', async function (CRQuantity) {
    await CollectionEntry.setCRQuantity(CRQuantity);
});

When('I have set the CR Weight as {string}', async function (CRWeight) {
    await CollectionEntry.setCRWeight(CRWeight);
});

When('I have clicked the Collection Finish', async function () {
    await CollectionEntry.clickCollectionFinish();
})

When('I have clicked the Collection Self Delivery', async function () {
    await CollectionEntry.clickCollectionSelfDelivery();
})

When('I have set the CR Width as {string}', async function (CRWidth) {
    await CollectionEntry.setCRWidth(CRWidth);
});

When('I have set the CR Depth as {string}', async function (CRDepth) {
    await CollectionEntry.setCRDepth(CRDepth);
});

When('I have set the CR Height as {string}', async function (CRHeight) {
    await CollectionEntry.setCRHeight(CRHeight);
});

When('I have set the CR XL Weight as {string}', async function (CRXLWeight) {
    await CollectionEntry.setCRXLWeight(CRXLWeight);
});

