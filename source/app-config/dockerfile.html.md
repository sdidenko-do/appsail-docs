---
title: Dockerfile
seo_title: Understanding Dockerfile in App Sail environment
description: Understanding how to configure your application in App Sail through Dockerfile
keywords: docker, dockerfile, app configuration
---
### Build folder structure
The App Sail CLI will create some files and folders inside the project. The file/folder structure looks like this for a basic Node.js project:

* .mako/
  * deploy/
    * bin/
      * start-node
    * build-scripts/
      * build-node-app
      * build-node-env
    * hooks/
      * after_live
      * before_live
    * Dockerfile
    * appsail.yml

### Dockerfile
The Dockerfile file contains instructions for Docker to build a container to run the project. There might be changes that need to be made manually if additional steps need to be taken to make the project run.

### start-node
The start-node script is a wrapper script to run processes inside a docker container. It has a section near the top where custom pre-start commands can be run (setting up environment variables based on other ones). It can also have multiple commands start if needed (nginx/apache for static assets, and other process for the language).

### build-node-app
The build-node-app script is called by the Dockerfile. This should have instructions on building the project (compiling static assets, generate bytecode).

### build-node-env
The build-node-env script is called by the Dockerfile. This should have instructions on building the environment so that the code can be executed. This may include installing libraries or other programs needed either during runtime or for building.

### after_live
The after_live script should run after the routing has been updated to direct connections to the new running instance (Purge old cache).

### before_live
The before_live script should run before the routing has been updated to direct connections to the new running instance (database migration).