---
title: Databases
seo_title: Connecting Live Apps to Databases in App Sail
description: Using environment variables to connect your application to a database in App Sail
keywords: environment variables, evars, obscuring sensitive information, databases
---

### How To Use Databases

App Sail runs databases and data services inside individual Docker containers. Environment variables are created to make it easier to connect to services. Databases and data services run inside a virtual Docker network that is private. Establishing a tunnel is required to be able to connect to services remotely. All services will have an environment variable with the IP address of the host (`<SERVICE_NAME>_HOST`). Services that require authentication also have environment variables for the username and password (`<SERVICE_NAME>_USER` and `<SERVICE_NAM>_PASS`).

App Sail does not automatically change code to connect to databases

If a project requires one or more databases or services, it will need to be modified to use environment variables to connect.

### Memcached
Memcached listens on the default port of 11211. For Memcached we create one environment variable:

* MEMCACHE_HOST

###MongoDB
Mongodb listens on the default port of 27017. For MongoDB we create one environment variable:

* MONGODB_HOST

### MySQL
The default created database that is created is called gonano. MySQL listens on the default port of 3306. For MySQL we create a few environment variables:

* MYSQL_HOST
* MYSQL_PASS
* MYSQL_USER
* MYSQL_ROOT_USER
* MYSQL_ROOT_PASS

### NFS
NFS listens on default ports of 111 and 2049. The NFS service also has SSH (port 22) running for remote administration. The username and password are for the SSH port to enable use of SCP. For NFS we create a few environment variables:

* NFS_HOST
* NFS_USER
* NFS_PASS

### Postgres
PostgreSQL listens on the default port of 5432. For PostgreSQL we create a few environment variables:

* POSTGRES_HOST
* POSTGRES_USER
* POSTGRES_PASS

### Redis
Redis listens on the default port of 6379. For Redis we create one environment variable:

* REDIS_HOST