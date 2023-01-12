import pressButton from '../support/action/pressButton';
import page from './page'


const basepath = require('path'); //this is for a file upload
class CollectionEntryPage extends page {

get collectionPostcodeField () { return $ ('input[id="CR_CollectionPostCode"]')}
get consignorField () { return $ ('input[id="CR_CollectionConsignorName"]')}
get collectionAddress1Field () { return $ ('//*[@id="CR_CollectionAddress1"]')}
get collectionAddress2Field () { return $ ('//*[@id="CR_CollectionAddress2"]')}
get collectionTownField () { return $ ('//*[@id="CR_CollectionTown"]')}
get collectionCountyField () { return $ ('//*[@id="CR_CollectionCounty"]')}



//Collection Postcode
async setCollectionPostcodeField (CollectionPostcode) {
    await this.collectionPostcodeField.click();
    await this.collectionPostcodeField.setValue(CollectionPostcode);
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
async setCollectionAddress1 (CollectionAddress1) {
    await this.collectionAddress1Field.click();
    await this.collectionAddress1Field.setValue(CollectionAddress1);
    await pressButton("Tab");
}

//Collection Address 2 
async setCollectionAddress2 (CollectionAddress2) {
    await this.collectionAddress2Field.click();
    await this.collectionAddress2Field.setValue(CollectionAddress2);
    await pressButton("Tab");
}

//Collection Town Field
async setCollectionTown (CollectionTown) {
    await this.collectionTownField.click();
    await this.collectionTownField.setValue(CollectionTown);
    await pressButton("Tab");
}

//Collection County 
async setCollectionCounty (CollectionCounty) {
    await this.collectionCountyField.click();
    await this.collectionCountyField.setValue(CollectionCounty);
    await pressButton("Tab");
}


}
export default new CollectionEntryPage()