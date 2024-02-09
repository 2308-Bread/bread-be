## Overview

This is an API Repository built in C# leveraging .NET 8 and deployed on Azure. 

Using this API will allow you to get the 10 traditional breads that originate from each country around the world. While we here at "le Belongea Boulangerie" care about home made bread, we are building this API in a new framework for our first time.

We are creating this API using .NET and in Rails. Running Load Tests on each of the API and comparing the efficiency. 

## Built With
<p align="center">
  <img src="https://camo.githubusercontent.com/cf8ce03b1f86674dc94383197d84300f128723ed5aeb13a2ff67fa710b219dbc/68747470733a2f2f646576656c6f7065722e6665646f726170726f6a6563742e6f72672f7374617469632f6c6f676f2f6373686172702e706e67" width="100">
  <img src="https://miro.medium.com/v2/resize:fit:4800/format:webp/0*84ceNnue3KaNVoDs" width="175">
  <img src="https://a0.anyrgb.com/pngimg/832/512/docker-logo-gitlab-software-repository-continuous-integration-software-build-readme-repository-docker-software-deployment-nodejs-thumbnail.png" width= "100">
  <img src="https://styles.redditmedia.com/t5_2rkse/styles/communityIcon_yq8rp6c884y61.png" width= "100">
  <img src="https://avatars.githubusercontent.com/u/10251060?s=280&v=4" width= "100">
  <img src="https://pbs.twimg.com/profile_images/1326963467119575041/OTgxd3mt_400x400.jpg" width= "100">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC-B_MIu5Th8IwEU6MZiitQUW5-_sbg_6ldOaldVQViWTjJ5YCWtFQcps_KVVMfBu0H8w&usqp=CAU" width= "100">
</p>

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



<!-- 

To Do

- Update Endpoints to match Rails
- Update ReadMe
- Update SQLScripts 
- Ask for PR review from Megan

 -->