# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch` 
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.


## Summary
0. npm install --save @sap/hdi-deploy core-util-is

0. Added risk-management-app-content in mta.yaml
    a. Generated via MTA add module

0. Added engine in package.json
0. Added build:cf in the package.json    

1. cds add hana --for production
    a. Generated undeploy.json
    b. Added lines 5 & 6 in the undeploy.json file.
    c. Generate production profile in package.json with hana as the db and included hdb npm package

2. cds add xsuaa --for production
    a. Generated xs-security.json
    b. Added xsuaa in the production profile in package.json. Also added @sap/xssec and passport npm packages.

3. cds compile srv/ --to xsuaa > xs-security.json <<-- REMOVE>>

4. cds add mta
    a. Generated the mta.yaml file

5. Manually added oauth2-configuration in the mta.yaml <<-- REMOVE >>
    a. Not sure about this

6. Add managed router via configuration
    a. Right-click mta.yaml and choose Create MTA Module from Template.
    b. Choose Approuter Configuration.
    c. Add oauth2-configuration ????
    d. Added risk-management-html5-app module (not done automatically)

7. Deploy via right click mta.yaml deploy.
    a. Build MTA Project
    b. Deploy mtar

8. Added apikey in Service Environment Variable. Restart.