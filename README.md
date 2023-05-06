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
0. Added criticality in Risks entity in schema.cds

1. Generate UI via "Fiori Open Application Generator" from command pallete.
    a. Notice the services.cds file generated under the app folder.
    b. Notice the annotations.cds file generated under the app/risks folder.

2. Create common.cds in app folder for common annotations. (To avoid redundancy). Reference this new annotation file to the services.cds file.

3. Update annotation.cds for the list report UI annotations.