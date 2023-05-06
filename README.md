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
1. Imported API_BUSINESS_PARTNER.edmx file from API Business Hub (under S/4HANA Cloud Product) to the root directory.
2. Execute command "cds import <EDMX_FILE>" to generate the csn file and automatically update the package.json folder.
3. Added external entity in schema.cds referencing to the csn file.
4. Uncommented the bp association in Risks entity in schema.cds
5. Unncommented the Business Partners Entity in service.cds
6. Added apikey in the .env file
7. Added logic in the service handler to perform API call during READ event.
8. Added credentials/url and link to API Business Hub in the package.json
9. Added @sap-cloud-sdk/http-client npm package
10. Updated Risks csv file to include Business Partner
11. Updated common.cds
    a. Provide title for the bp property.
    b. Annotation for Business Partners Entity. Hidding the BP Number
12. Updated annotation.cds
    a. Added bp as part of the line items annotation
    b. Added bp as part of the Main FieldGroup in the object page.
13. Updated risk-service.js to populate bp during READ event in the Risks entity    

