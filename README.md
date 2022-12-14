# About
An automated testing framework for The Pallet Network's Connect software.

# Set-up

1. Install Visual Studio Code (or another IDE of your choice)
     - Add Cucumber (Gherkin) Full Support extension
2. Install NPM  v16.13.0
3. install wdio using command "npm install wdio"
4. install Git from https://git-scm.com/download/win
5. install Git client of your choice like sourceTree
4. Clone the test repo from Git here: https://github.com/thepalletnetwork/tpn-test-automation
5. Execute the command "npm run wdio "@smoke" to run the tests

# API Example

The code for the API example was created to run against a test API website here: https://reqres.in

Important Information:
1.	To change the number of browser open for parallel test execution set the value of maxInstances variable in capabilities section in wdio.config.ts as given below

capabilities: [{

        maxInstances: 5,
        //
        browserName: 'chrome',

2.	If we are adding any new step file to framework then we need to add the corresponding entry into wdio.config.ts file as given below

 require: [
            './src/steps/given.ts',
            './src/steps/then.ts',
            './src/steps/when.ts',
            './src/steps/apiSteps.ts',
            './src/steps/collectionRequestSteps.ts',
            './src/steps/consignmentEntrySteps.ts',
            './src/steps/nonNetworkEntrySteps.ts',  
            './src/steps/routingSteps.ts', 
 

