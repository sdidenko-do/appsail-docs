---
title: boxfile.yml
seo_title: App Configuration with the boxfile.yml
description: The boxfile.yml is the primary means of configuring apps with Nanobox. It allows you to custom-configure your environment to your project's specific needs.
keywords: boxfile, boxfile.yml, app config, config file, deploy config, dev config
---

The `boxfile.yml` is a yaml config file housed in the root of your project that defines what components should exist in your app and all configuration related to your app’s deployment and infrastructure. It allows you to custom-configure your app's environment to your project's specific needs.

#### Important Things to Know About the Boxfile
- Boxfiles are required to use Nanobox.
- Your boxfile must be named `boxfile.yml` in order to be recognized.
- The `boxfile.yml` must be placed at the root of your project's repo.
- The boxfile must be valid yaml markup. You can brush up on your yaml at [yaml.org](http://yaml.org/start.html) or check your syntax at [yamllint.com](http://www.yamllint.com/).
- In a local app, application components are created and destroyed by adding and removing them from your boxfile.yml. In live apps, components can only be removed through your dashboard.

####Sample Boxfile
```yaml
run.config:
  engine: ruby
  engine.config:
    runtime: ruby-2.2
  cache_dirs:
    - vendor

deploy.config:
  transform:
    - 'bundle exec rake fix-yaml'

web.site:
  start: 'bundle exec puma -c config/puma.conf'
  network_dirs:
    data.storage:
      - usr/uploads

worker.jobs:
  start: 'ruby workers/image_processor.rb'
  network_dirs:
    data.storage:
      - usr/uploads

data.db:
  image: nanobox/postgresql:9.5

data.storage:
  image: nanobox/unfs:0.9

data.queue:
  image: nanobox/redis:3.0
```

## The Boxfile Structure

Your app is made up of components. A component is a piece of your app's infrastructure tasked with a specific function. Each component is configured separately in the Boxfile.

Yaml is used in the Boxfile because of its simplicity and clarity when defining relationships between data. A component's configuration is indented and nested under the component ID. Each level and relationship of data is defined by indentation.

#### Boxfile Structure

```yaml
web.site: #<-------------------- Component ID
  start: 'rails s'          #|
  network-dirs:             #|-- Component Settings
    data.storage:           #|
      - usr/uploads         #|


data.mysql: #<------------------ Component ID
  image: nanobox/mysql:5.6  #|
  config:                   #|-- Component Settings
    event_scheduler: 'Off'  #|
                            #|
```

#### Things to Note About yaml
- **Yaml is very picky about indentation**. Indentation is what is used to define the relationship structure of information in your Boxfile.
- **Tabs are not valid yaml**. All indentation should be done using double spaces.

### Component IDs
Every component in your app has a component ID which consists of two parts:

- Component Type - [web, worker, or data](#component-types).
- Unique identifier - Completely up to you.

Component IDs must be unique.

#### IMPORTANT: Component IDs Cannot be Changed
Component IDs cannot be changed once a boxfile is deployed and the components are created. If they are changed, they will be recognized as new components.

#### Component IDs
```yaml
# Pattern
type.unique-identifer:

# Examples
web.site:
web.api:
worker.jobs:
worker.image-processor:
data.db:
data.storage:
```

### Component Types
There are three types of components:

- **web**: A code component with publicly accessible ports.
- **worker**: A backend code component with no publicly accessible ports.
- **data**: A component that houses data of some sort.

<!-- ### Component Nicknames
Each web, worker, and data component can be given a nickname. The nickname is what displays as the component label in your dashboard.

![Nicknames in the Dashboard](boxfile-nicknames.png)

#### nickname
```
web.site:
  nickname: front

data.db:
  nickname: front-db
  image: nanobox/postgresql:9.5
```

#### Nickname Restrictions
The following restrictions apply to component nicknames:

- Can only contain lowercase letters, numbers, and dashes
- Cannot start or end with a dash
- Cannot contain consecutive dashes -->

## Sections of the Boxfile
Boxfiles consist of a handful of sections or "nodes": run.config, deploy.config, web, worker, data. These are covered in detail in the next few docs, but here are some quick descriptions:

[`run.config`](/boxfile/run-config/) - Defines the build, environment, and configuration for web and worker components.

[`deploy.config`](/boxfile/deploy-config/) - Defines deploy hooks and possible code transformations.

[`web`](/boxfile/web/) - Defines settings unique to each web component.  

[`worker`](/boxfile/worker/) - Defines settings unique to each worker component.  

[`data`](/boxfile/data/) - Defines settings unique to a specific data component.
