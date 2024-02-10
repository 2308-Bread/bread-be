# La Boulangerie

Created by: 
- [Eric Belongea](https://www.linkedin.com/in/eric-belongea/) | [GitHub](https://github.com/EricBelongea)
- [Clay O'Leary](https://www.linkedin.com/in/john-clay-oleary/) | [GitHub](https://github.com/Captainlearyo)
- [Cory Powell](https://www.linkedin.com/in/coryrpow/) | [GitHub](https://github.com/coryrpow)
- [Bobby Steckline](https://www.linkedin.com/in/rsteckline/) | [GitHub](https://github.com/rsteckline)
- [Deanna Stevens](https://www.linkedin.com/in/deanna-sofia-stevens/) | [GitHub](https://github.com/dsstevens)

## Directory
- [Getting Started]()
- [Built With]()
- [Database Visualization]()
- [Testing]()
- [Gems and Testing ]()
- [Learning Goals]()
- [API Endpoints]()
- [Endpoint Details]()
  - [All Countries]()
  - [Specific Country Details and Associated Breads]()
  - [All Breads]()
  - [Specific Bread Details]()
  - [All Users]()
  - [Specific Users Details]()
 
## Overview

This is an API Repository built in C# leveraging .NET 8 and deployed on Azure. 

Using this API will allow you to get traditional breads that originate from each country around the world. While we here at "le Belongea Boulangerie" care about home made bread; more countries, more breads, more recipes coming soon. 

We are creating this API using .NET and in Rails. Running Load Tests on each of the API and comparing the efficiency. 

### Want to see the other Repos?

<u> C# && .NET </u>
  - [.NET Repo](https://github.com/2308-Bread/dotnet-bread-be)
  - [Frontend Repo](https://github.com/2308-Bread/dotnet-bread-fe)
  - [Deployed Site](https://dotnet-laboulangerie.vercel.app/)

<br>

<u> Ruby on Rails </u>
  - [Rails Repo](https://github.com/2308-Bread/rails_bread_be)
  - [Frontend Repo](https://github.com/2308-Bread/rails_bread_fe)
  - [Deployed Site](https://laboulangerie.vercel.app/)


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

## Setup the Microsoft Environment 

1. Install [C# and .NET 8](https://dotnet.microsoft.com/en-us/download)
<!-- https://dotnet.microsoft.com/en-us/download -->

2. Install Azure Data Studio && MS SQL Sever [here](https://learn.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver16)
<!-- https://learn.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver16 -->

3. Install [Docker](https://hub.docker.com/)
<!-- https://hub.docker.com/ -->

If you are wanting to make your own deployment you will have to do the following steps. 
Deployment:

azure portal  

az login

dotnet build --configuration Release

az webapp up --sku F1 --name "YOUR_APP_NAME" --os-type linux



### Apple Users

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