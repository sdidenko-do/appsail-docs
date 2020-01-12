---
title: Workflow
seo_title: Streamlined Dev-to-Production Workflow
description: App Sail streamlines your development-to-production workflow.
keywords: dev to production, development workflow, better dev workflow, development strategy
---

App Sail makes it easy to deploy code from your local machine to various consistent environments without having to configure them. The basic development-to-production workflow looks like this:

## First Use
When you use App Sail for the first time, you will need to connect the CLI to your DigitalOcean account

```bash
# start your interactive app deployment process
mako push
```

This will drop you into an interactive console. You can also pass parameters into the `push` command to tune your app deployment. More information is available in the [`push` documenation](/cli/push/). Once you've completed the authentication, App Sail will proceed with the next steps to deploy your app.

## Launch an App
App Sail will automatically launch your app on a DigitalOcean Droplet. The [Launch an App](/workflow/launch-app) doc walks through how.

### Deploy Another App
If you have already authenticated the CLI, you can simply run the `push` command again and it will proceed straight to the next steps.
