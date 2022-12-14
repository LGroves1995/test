import page from './page' 

class LandingPage extends page {

    get LogOffBtn () { return $('a[href="/Account/LogOff"]') }
    get DayEndBtn () { return $('#menu > li:nth-child(2)') }
    get dayendConfirmation () { return $ ('#submitDepotDayEnd') }
    get consignmententryBtn () { return $ ("li[data-action='Consignment Entry'] span") }
    get collectionreqBtn () {return $ ("li[data-action='Collection Request'] span") }

    async clickLogOff () {
        
        await browser.pause(3000);
        await this.LogOffBtn.waitForDisplayed();
        await this.LogOffBtn.click();
        await browser.pause(3000);
    }

    async clickDayEnd () {
        await this.DayEndBtn.waitForDisplayed
        await this.DayEndBtn.click();
    }

    async clickDayEndOk () {
        await this.dayendConfirmation.click();
    }

    async clickconsignment () {
        await this.consignmententryBtn.click();
    }

    async clickCollectionRequestBtn () {          
        await this.consignmententryBtn.waitForDisplayed(20000);
        await this.consignmententryBtn.click();      
        await browser.pause(10000);      
        await this.collectionreqBtn.waitForDisplayed(20000);         
        await this.collectionreqBtn.click(); 
        await browser.pause(10000);  
    }

}

export default new LandingPage()