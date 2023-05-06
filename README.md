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
1. Created schema.cds for the data definition
    a. Notice the Association keywords
    b. Notice the managed keyboard which automatically adds the createdAt and modifiedAt fields

2. Created risk-service.cds for the service definition
    a. Notice the hasDraftEntity property due to the @odata.draft.enabled

3. Provide mock data
    a. Notice the miti_id column (because of the association)
