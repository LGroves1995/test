import { Given } from '@cucumber/cucumber';
import { When } from '@cucumber/cucumber';
import { Then } from '@cucumber/cucumber';


import LoginPage from '../pages/login.page'
import LandingPage from '../pages/landing.page';
import ConsignmentEntry from '../pages/consignmententry';
import CollectionEntry from '../pages/collectionentry';

When('I have set the Collection Postcode as {string}', async function (CollectionPostcode) {
    await CollectionEntry.setCollectionPostcodeField(CollectionPostcode);
});

When('I have set the Consignor as {string}', async function (Consignor) {
    await CollectionEntry.setCosignorField(Consignor);
});

When('I have set the Collection Address 1 as {string}', async function (CollectionAddress1) {
    await CollectionEntry.setCollectionAddress1(CollectionAddress1);
});

When('I have set the Collection Address 2  as {string}', async function (CollectionAddress2) {
    await CollectionEntry.setCollectionAddress2(CollectionAddress2);
});

When('I have set the Collection Town as {string}', async function (CollectionTown) {
    await CollectionEntry.setCollectionTown(CollectionTown);
});

When('I have set the Collection County as {string}', async function (CollectionCounty) {
    await CollectionEntry.setCollectionCounty(CollectionCounty);
});