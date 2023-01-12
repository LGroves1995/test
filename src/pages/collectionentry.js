import pressButton from '../support/action/pressButton';
import page from './page'


const basepath = require('path'); //this is for a file upload
class ConsignmentEntryPage extends page {

get  collectionRequestBtn () { return $ ('//*[@id="menu_mn_active"]')}

//Collection Request
async clickCollectionRequest () {
    await browser.pause(1000);
    await this.collectionRequestBtn.click(); 
}







}
export default new ConsignmentEntryPage()