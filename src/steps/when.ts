import { When } from '@cucumber/cucumber';

import clearInputField from '../support/action/clearInputField';
import clickElement from '../support/action/clickElement';
import closeLastOpenedWindow from '../support/action/closeLastOpenedWindow';
import deleteCookies from '../support/action/deleteCookies';
import dragElement from '../support/action/dragElement';
import focusLastOpenedWindow from '../support/action/focusLastOpenedWindow';
import handleModal from '../support/action/handleModal';
import moveTo from '../support/action/moveTo';
import pause from '../support/action/pause';
import pressButton from '../support/action/pressButton';
import scroll from '../support/action/scroll';
import selectOption from '../support/action/selectOption';
import selectOptionByIndex from '../support/action/selectOptionByIndex';
import setCookie from '../support/action/setCookie';
import setInputField from '../support/action/setInputField';
import setPromptText from '../support/action/setPromptText';
import LoginPage from '../pages/login.page';
import LandingPage from '../pages/landing.page';
import waitForDisplayed from 'webdriverio/build/commands/element/waitForDisplayed';
import collectionentry from '../pages/collectionentry';



When('I have clicked on Login button', async function () {    
    await waitForDisplayed
    await LoginPage.clickLogin();
});

When('I click on Day End', async function () {
    await LandingPage.clickDayEnd();
});

When('I click on Day End Okay confirmation', async function () {
    await browser.pause(2000);
    await LandingPage.clickDayEndOk();  
});

When ('I have clicked on consignment entry', async function () {
    await LandingPage.clickconsignment();
});

When ('I have clicked on collection request', async function () {
    await collectionentry.clickCollectionRequest();
});
// 
// The statements below are left from the original webdriverio template
// 

When(
    /^I (click|doubleclick) on the (link|selector) "([^"]*)?"$/,
    clickElement
);

When(
    /^I (add|set) "([^"]*)?" to the inputfield "([^"]*)?"$/,
    setInputField
);

When(
    /^I clear the inputfield "([^"]*)?"$/,
    clearInputField
);

When(
    /^I drag element "([^"]*)?" to element "([^"]*)?"$/,
    dragElement
);

When(
    /^I pause for (\d+)ms$/,
    pause
);

When(
    /^I set a cookie "([^"]*)?" with the content "([^"]*)?"$/,
    setCookie
);

When(
    /^I delete the cookie "([^"]*)?"$/,
    deleteCookies
);

When(
    /^I press "([^"]*)?"$/,
    pressButton
);

When(
    /^I (accept|dismiss) the (alertbox|confirmbox|prompt)$/,
    handleModal
);

When(
    /^I enter "([^"]*)?" into the prompt$/,
    setPromptText
);

When(
    /^I scroll to element "([^"]*)?"$/,
    scroll
);

When(
    /^I select the option with the (name|value|text) "([^"]*)?" for element "([^"]*)?"$/,
    selectOption
);

When(
    /^I move to element "([^"]*)?"(?: with an offset of (\d+),(\d+))*$/,
    moveTo
);