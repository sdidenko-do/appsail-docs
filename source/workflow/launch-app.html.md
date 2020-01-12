---
title: Launching an App
seo_title: Launch an App in Production
description: Creating and launching apps on your production platform is incredibly easy with Mako.
keywords: production launch, quick launch, launch docker app, launch docker container, create new app, new app
---

Mako makes creating and launching apps on your production platform incredibly easy. The following steps will create a new app and provision a [bunkhouse server](/scaling/bunkhouse/) on a DigitalOcean Droplet.

## Launch New App

To get started, open your favorite terminal and navigate to the folder containing your app's source code. Then run the `push` command.

```bash
# start your interactive app deployment process
mako push
```

The GUI-based workflow to deploy a new app is coming soon.

### Select Team

If your DigitalOcean account is associated with one or more teams, Mako will automatically detect it and will ask you to choose the team context for this app. By default it will deploy the app under your individual account.

### Name Your App
Provide a name for your app or choose the default one that Mako auto-generates for you.

### Environment Variables

If your app uses environment variables, you will be able to define them at the next step. Otherwise you can skip it. You can always add the environment variables later. Learn more about [Environment variables] (/app-config/environment-variables/). 

### Generate Dockerfile

Mako runs all applications inside Docker containers. It can generate the Dockerfile for you automatically (highly recommended) or you can create it manually. Learn more aboue [Dockerfile] (app-config/dockerfile)

### Language Detection

Intially Mako will automatically detect frameworks and manage dependencies for NodeJS and Python apps. You can also bring your own Docker image that includes packages and frameworks not yet supported by App Sail.

### Region
During the Beta phase Mako will deploy all applications in NYC3 by default.

## Deploy Your App
When a live app is created, Mako automatically links your local folder to the remote app definition. Your team members can add it as remote to their local codebase and deploy to it.
