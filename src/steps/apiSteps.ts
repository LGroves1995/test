import { When, Then } from '@cucumber/cucumber';
import APIHelper from '../utilities/apiHelper'
import { User } from '../utilities/apiHelper'

var tempUser: User;

When('I call the get user api with id {string}', async function (userId) {
    tempUser = await APIHelper.getUser(userId);
});

Then('the API returns a user with the first name {string}', async function (expectedFirstName) {
    await expect(tempUser.data.first_name).toBe(expectedFirstName);
});