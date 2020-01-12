---
title: Managing Local Data
seo_title: Managing Local Data & Databases
description: Data stored in local Nanobox development environments can be managed using the tools you're already used to.
keywords: managing local databases, managing local data, managing development database, manage development data, connecting to local database
---

When data components are provisioned inside of a Nanobox container, each is given its own virtual IP. These allow you to connect to your data services in your running container and manage them with your local client of choice.

To view the IPs and connection credentials for your data components, use the [`info local` command](/cli/info/).

```bash
nanobox info local

----------------------------------------------
app-name (dev)                    Status: up  
----------------------------------------------

...

data.db
  IP      : 192.168.99.64
  User(s) :
    root - VIToH0Ul2f
    nanobox - dXiwgbWgyn
```

#### Database Name
The name of databases deployed with Nanobox will always be `gonano`.

#### Port
The port will always be the default port of the service type.

### Connecting to a Service
Use the credentials provided in the `dev info` output to connect to your services. Below is an example of connecting to a PostgreSQL service inside of a dev app using the `psql` cli.

#### Example Connection to Postgres Service
```bash
nanobox info local

...

data.db
  IP      : 192.168.99.64
  User(s) :
    root - rOotPaSs
    nanobox - NaNopAsS

...

# In a separate terminal session

PGPASSWORD="NaNopAsS" psql -h 192.168.99.64 -p 5432 -U nanobox gonano
```
