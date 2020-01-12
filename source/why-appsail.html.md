---
title: Why App Sail?
description: Developers are expected to be full-stack and cloud experts, but you shouldn't have to be. App Sail lets you focus on code and not worry about everything else.
---

These days, developers are expected to be full-stack and cloud experts, but you shouldn't have to be. App Sail lets you focus on your code and not worry about everything else.

DigitalOcean is on a mission to simplify cloud computing so developers and their teams can spend more time building software that changes the world.

At DigitalOcean, we've worked with over a million developers to get their code live on the web. With App Sail, we combine what we've learned from them and from our own engineering teams through years of successfully (and unsuccessfully) building, managing, and scaling production web application platforms. Our goal with App Sail is to help you avoid the pitfalls and time-loss that come with building, managing, and scaling yours.

### Spending Your Time Where It Matters Most
Even with the simplest cloud provider, building and managing an app platform can be challenging and tedious. You often find yourself spending way too much time setting up local dev environments, building and configuring production servers, setting up monitoring for those servers, etc. App Sail automates these tasks for you so you can spend more time on your app, your site, your users, and your code.

### COMING SOON: Dev / Production Parity
A fundamental challenge faced in application development is environment consistency. How do you make your local development environment perfectly match your production environment? An even tougher question - How do you make the environment setup process consistent, repeatable, fast, and easy?

With future releases of App Sail, we'll make it simple for you to have a containerized development environment that matches your production environment.

For a deep dive into the current App Sail workflow, check out the [Workflow docs](/workflow/).

### Automated Environment Provisioning & Code Deploys
When deploying your code, App Sail automatically provisions and builds your production servers along with the supporting services specified in your `mako.yml`. But there's no need to manually create or edit this file. Your first `mako push` will guide you through the creation and configuration of this file for you. 

Code runtimes and data services are automatically provisioned using [engines](/engines/) and [images](/images/). App Sail then builds, packages, and deploys your runtime and code into your running environment for you. You never have to manually provision or configure a server.

Using different [contexts](/contexts/) you can easily deploy multiple versions of the same application for staging and testing purposes. While these can have different environment variables, they use the same containerized approach to ensure consistency and repeatability.

### Application Management & Visibility
Once an app is live, being able to easily see what's happening to your infrastructure is incredibly important. The App Sail dashboard provides resource usage statistics for all nodes in your platform, streaming application logs, and other important tools to help you see, diagnose, and fix problems when the happen. The [Live App Management docs](/live-app-management/) provide more information about the controls provided by the dashboard.

### Simple Scalability
Scaling a production infrastructure can be intimidating and stressful. Uptime is critical and so many things can go wrong. App Sail automates the process of scaling application components based on best practices and years of experience.

Scaling processes are triggered in your App Sail dashboard with just a few clicks. Once triggered, App Sail takes care of provisioning new servers, deploying code, migrating data, etc. For more information about scaling mechanics, check out the [Scaling docs](/scaling/).
