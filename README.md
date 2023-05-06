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
1. cds add hana --for production
    a. Generated undeploy.json
    b. Generate production profile in package.json with hana-cloud as the db and included hdb npm package

2. cds add xsuaa --for production
    a. Generated xs-security.json
    b. Added xsuaa in the production profile in package.json. Also added @sap/xssec and passport npm packages.

3. cds compile srv/ --to xsuaa > xs-security.json

4. cds add mta
    a. Generated the mta.yaml file

5. Manually added oauth2-configuration in the mta.yaml

6. cds add approuter --for production
    a. Generated xs-app.json under the app folder.
    b. Generated package.json under the app folder.

7. Manually changed xs-app.json from
    {
    "routes": [
        {
        "source": "^/app/(.*)$",
        "target": "$1",
        "localDir": ".",
        "cacheControl": "no-cache, no-store, must-revalidate"
        },
        {
        "source": "^/(.*)$",
        "target": "$1",
        "destination": "srv-api",
        "csrfProtection": true
        }
    ]
    }

    to the present entries found in this branch.

8. npm update --package-lock-only

9. mbt build -t gen --mtar mta.tar
    a. Generated gen folder with mtad.yaml and mta.tar files

10. cf deploy gen/mta.tar
    a. Deployed srv, db-deployer and approuter
    b. Manually add apikey in the User Provided variables of the srv app
    c. Restart the srv app

11. Error in db-deployer
    a. Corrected Mitigations csv file



perform npm install in root directory and in app/