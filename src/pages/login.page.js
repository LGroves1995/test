import page from './page'

class LoginPage extends page {

    get username () { return $('#UserName') }
    get password () { return $('#Password') }
    get submitBtn () { return $('#connectLogin') }


    async open () {
        await super.open('login');
    }

    async clickLogin () {
        await this.submitBtn.click();
    }

    async enterUserName(userName) {
        await this.username.setValue(userName);
    }

    async enterPassword(password) {
        await this.password.setValue(password);
    }
}

export default new LoginPage()