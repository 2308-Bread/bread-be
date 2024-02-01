## Setup

Install C# and .NET 8 <br>
https://dotnet.microsoft.com/en-us/download

Azure Data Studio && MS SQL Sever <br>
https://learn.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver16

Docker (Whale Icon at bottom)<br>
https://www.microsoft.com/en-us/sql-server/sql-server-downloads

<u>Apple Users</u><br>

If you are working on Mac with a M1 or M2 chip select the 'Apple Chip' options when downloading.

### Guidelines

Since the Database is being hosted with Azure Data Studios you will have to create your own DB! In this repo you will find a fodler called `SQLScripts`, here are the SQL querries that you will need inorder to setup the repo. Copy and Paste them in AzureDataStudios to get setup quickly, or just one at a time. 

If you add anything to the repo, table, you MUST add that tables SQL to the BOTTOM of `DBSetup.sql`

If you add or remove a column to the Database you MUST add the SQL querries to the file in the nested `Migrations` folder.
