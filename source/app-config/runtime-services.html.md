---
title: Runtime & Services
seo_title: Configure Runtimes, Services, & Components with the appsail.yml
description: Your app's runtime and supporting services are all configured in your appsail.yml.
---

Your app's runtime and services are all configured in your `appsail.yml`. For the deep dive into all the configuration options available, view the [appsail.yml documentation](/boxfile/).

## UPDATE - Web & Worker Configuration
THIS WHOLE PAGE NEEDS TO BE UPDATED BY AN ENGINEER 

Code components (webs & workers) use the runtime built by the generator. Every generator exposes different runtime configuration options which should be documented in each generator. Official App Sail generators and available config options are provided in the [WHERE?](https://guides.nanobox.io).

Configuration options are available to web and worker components that are not part of the built runtime. These are documented in the following docs:

[Web Config Options](/boxfile/web/)  
[Worker Config Options](/boxfile/worker/)  

## Data Component Configuration
Data components are configured using their [image](/images/). Each image exposes different configuration options available in the boxfile.yml which should be documented in the image. Official Nanobox images and available configuration options are available in the [Nanobox Service Guides](https://guides.nanobox.io/#services).

[Data Component Config Options](/boxfile/data/)
