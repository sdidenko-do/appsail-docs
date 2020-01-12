---
title: Environment Variables
seo_title: Environment Variables in Local and Production Environments
description: Environment variables let you obfuscate sensitive information or define environment-specific options. Managing evars with App Sail is simple.
keywords: environment variables, evars, obscuring sensitive information
---

Environment variables are helpful when you need to obfuscate sensitive information or define environment-specific options. App Sail automatically generates environment veriables for your application name (APP_NAME) and your app's IP address (APP_IP). It also allows you to define custom environment variables for your app through the dashboard, or using the App Sail CLI's ['set' command](/cli/set/).

### Adding Environment Variables on App Deployment

App Sail offers you an interactive CLI that walks you through the application deployment process. When you [push](/cli/push/) an app to a live environment, the CLI will prompt you to add environment variables:

```bash
✓ Would you like to set any environment variables now? (you can edit later if wanted): Yes
✓ Enter variable key: FOO
✓ Enter variable value: BAR
✓ Is this correct? FOO=BAR: Yes
✓ Add another environment variable?: No
```

### Adding Environment Variables in the Dashboard
Environment variables can be added in your dashboard under Config > Environment Variables. Simply add a key and a value, then save.

![Adding Environment Variables](/assets/images/evar-add.png)

**Note:** Adding or updating an environment variable will automatically reload the app's environment

### Adding Environment Variables Through the CLI
The App Sail CLI's `set` command allows you easily manage environment variables.

#### Adding Environment Variables to a Live App
```bash
# Adding a Single Environment Variable
mako set env KEY=VALUE -a <application name>

# Adding Multiple Environment Variables
mako evar add KEY1=VALUE1 KEY2=VALUE2 KEY3=VALUE3
```

For more information about the `set` command, check out the ['set' documentation](/cli/set/).
