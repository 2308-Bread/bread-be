# La Boulangerie

Created by: 
- Backend 
  - [Eric Belongea](https://www.linkedin.com/in/eric-belongea/) | [GitHub](https://github.com/EricBelongea)
  - [Cory Powell](https://www.linkedin.com/in/coryrpow/) | [GitHub](https://github.com/coryrpow)
  - [Clay O'Leary](https://www.linkedin.com/in/john-clay-oleary/) | [GitHub](https://github.com/Captainlearyo)
- Frontend
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

<br>

<u>Furture Features</u>
 - [GitHub Projects Boards](https://github.com/orgs/2308-Bread/projects/1/views/1)

## Built With
![MicrosoftSQLServer](https://img.shields.io/badge/Microsoft%20SQL%20Server-CC2927?style=for-the-badge&logo=microsoft%20sql%20server&logoColor=white)
![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white)
![Wiki.js](https://img.shields.io/badge/wiki.js-%231976D2.svg?style=for-the-badge&logo=wikidotjs&logoColor=white)
![Udemy](https://img.shields.io/badge/Udemy-A435F0?style=for-the-badge&logo=Udemy&logoColor=white)
![.Net](https://img.shields.io/badge/.NET-5C2D91?style=for-the-badge&logo=.net&logoColor=white)
![Azure](https://img.shields.io/badge/azure-%230072C6.svg?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Microsoft](https://img.shields.io/badge/Microsoft-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)
![Vercel](https://img.shields.io/badge/vercel-%23000000.svg?style=for-the-badge&logo=vercel&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![C#](https://img.shields.io/badge/c%23-%23239120.svg?style=for-the-badge&logo=csharp&logoColor=white)
![Postman](https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white)
![Swagger](https://img.shields.io/badge/-Swagger-%23Clojure?style=for-the-badge&logo=swagger&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)

<!-- <p align="center">

  <img src="https://camo.githubusercontent.com/cf8ce03b1f86674dc94383197d84300f128723ed5aeb13a2ff67fa710b219dbc/68747470733a2f2f646576656c6f7065722e6665646f726170726f6a6563742e6f72672f7374617469632f6c6f676f2f6373686172702e706e67" width="100">
  <img src="https://miro.medium.com/v2/resize:fit:4800/format:webp/0*84ceNnue3KaNVoDs" width="175">
  <img src="https://a0.anyrgb.com/pngimg/832/512/docker-logo-gitlab-software-repository-continuous-integration-software-build-readme-repository-docker-software-deployment-nodejs-thumbnail.png" width= "100">
  <img src="https://styles.redditmedia.com/t5_2rkse/styles/communityIcon_yq8rp6c884y61.png" width= "100">
  <img src="https://avatars.githubusercontent.com/u/10251060?s=280&v=4" width= "100">
  <img src="https://pbs.twimg.com/profile_images/1326963467119575041/OTgxd3mt_400x400.jpg" width= "100">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC-B_MIu5Th8IwEU6MZiitQUW5-_sbg_6ldOaldVQViWTjJ5YCWtFQcps_KVVMfBu0H8w&usqp=CAU" width= "100">
</p> -->

## Set up the Microsoft Environment 

1. Install [C# and .NET 8](https://dotnet.microsoft.com/en-us/download)

2. Install Azure Data Studio && MS SQL Sever [here](https://learn.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver16)

3. Install [Docker](https://hub.docker.com/)


### Deployment Tips (If you chose to deploy your own API)
1.  Before anything create your Microsoft account and set up your [Azure Portal](https://azure.microsoft.com/en-us/get-started/azure-portal)
  - Sign In or create a Free Account.
  - A free account comes with $200 USD in credits.
2.  In your repo have install the [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
  - Mac
    - `brew upgrade && brew install azure-cli`
    - If you're having problems with those commands try running the code one at a time.
3.  Once you have your portal set up and the azure-cli installed run the following
  - `az login`
4.  Once logged in run the following to build your webapp.
  - `dotnet build --configuration Release`
5.  Now deploy the app!
  - `az webapp up --sku F1 --name "YOUR_APP_NAME" --os-type linux`
    - Replace the OS Type with either windows or linux. For smaller apps there's no difference.
6. Now go to the Azure Portal. and checkout `App Services`. You should be able to see your new app.
7. From Azure Portal home page navigate tho ` SQL databases`. Click the plus icon to create your db. Follow the prompts and create your db. 
  -  Save your password.
  - Navigate to your db, this will be your new `DefaultConnection` string in your repo.

### Apple Users

If you are working on Mac with a M1 or M2 chip select the 'Apple Chip' options when downloading.


## Database Protocols

Since this db is hosted via a Dockerized Azure Database studios you will have access to the current production db. 

If you are wanting to add to and add more to the db, please create your own local testing db. To do this create a new dockerized azure db studios db and change the `DefaultConnection` string in `appsettings.json` file.

The `SQLScripts` file contains all the SQL needed to create the Database and seed to be concurrent with the production environment. If adding anything here please add to the `Migrations` folder or to the bottom of `SQLScripts` with data and the SQL used. 

## Endpoints

Press `F5` on Windows and the green play button with the 'bug' on the Mac task bar to run localhost.

This will take you to Swagger at `http://localhost:5000/swagger/index.html`.

Here you will see all the endpoints and can test the responses. 
