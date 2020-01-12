---
title: Adding SSL/TLS
seo_title: Add SSL/TLS Encryption to Your Production App
description: Normally the process of adding SSL/TLS to your app is tedious and complicated. Nanobox simplifies it into a few steps.
keywords: ssl certificates, ssl encryption, letsencrypt integration, simple ssl, easy tls encryption
---

Normally the process of adding SSL to your app is tedious and complicated, but with Nanobox, we've tried to make it as simple as possible. To get started, click on the "Network" tab of your application dashboard and go to "SSL/TLS Certificates". Then click "New SSL/TLS Certificate".

![New SSL/TLS Certificate](/assets/images/ssl-tls-add.png)

In order to generate a certificate, specific information is required. Provide the necessary information and click "Create Certificate".

![Certificate Information](/assets/images/ssl-tls-required-info.png)

## Certificate Bundles
With the information provided, you can now create a certificate "bundle". A bundle consists of a Private Key, a Certificate, and a Certificate Authority (CA) - all the files required to install a certificate on a server.

To create a new bundle, click "New Bundle".

![Create New Bundle](/assets/images/ssl-tls-new-bundle.png)

There are different bundle types to choose from when creating a new bundle:

- [LetsEncrypt](#letsencrypt)  
- [Self-Signed](#self-signed)  
- [Third-Party New](#third-party-new)  
- [Third-Party Import](#third-party-import)

### LetsEncrypt
[LetsEncrypt](https://letsencrypt.org) is is a free, automated, and open certificate authority that provides encryption at no cost. When creating a LetsEncrypt bundle, Nanobox automatically generates the required key, certificate, and CA for you.

**Important Note:** In order for a LetsEncrypt certificate to be successfully installed, you must first point the domain to [your app's IP](/domains-networking/custom-domains/#using-an-a-record). Only then will LetsEncrypt be able to verify domain ownership and issue the certificate.

### Self-Signed
Self-Signed certificates provide SSL/TLS encryption, but are not signed by a certificate authority and are not trusted by most browsers. Users visiting a site with a self-signed cert will be shown a warning before the site will load. Valid use cases for self-signed certificates include things such as APIs or staging apps.

When creating a self-signed bundle, Nanobox automatically generates the required key, certificate, and CA for you.

### Third-Party New
If you've purchased an SSL certificate from a 3rd Party SSL provider and have not keyed the certificate, this is the option you should go with. This is a multi-step process.

#### 1. Submit Your CSR to Your SSL Provider
With your private key generated, Nanobox provides a Certificate Signing Request (CSR). Submit your CSR to your SSL provider. They will use it to generate a certificate and certificate authority that matches your private key.

![Certificate Request](/assets/images/ssl-tls-csr.png)

*Be sure to copy the full contents of your CSR.*

#### 2. Paste in Your Certificate & Certificate Authority
Your SSL provider will make available files that include your Certificate and Certificate Authority and possibly [intermediate certificates](#intermediate-certificates). Paste the full contents of these files into the corresponding fields in your dashboard.

*Be sure to paste the full contents of your Certificate and Certificate Authority.*

The naming of these files isn't standardized so it can be hard to know which is which. The [Identifying Certificates, CAs, and Intermediate Certs](/domains-networking/ssl-tls/identifying/) doc should help.

##### Intermediate Certificates
Some SSL providers provide intermediate certificates that are part of your certificate's authoritative chain. Without these, some browsers will not honor the certificate. To install intermediate certificates, include them in the Certificate Authority field with your CA.

### Third-Party Import
If you have a certificate that has already been keyed and used on another host, you can import that certificate with Nanobox. You'll need your cert's key, certificate, and CA. These can be obtained from either your SSL/TLS provider or where your certificate is currently installed. Paste the full contents of each into the corresponding fields to complete your bundle.

## Activate a Bundle
With a bundle created, it's ready to be installed. To install a bundle in your running app, click "Activate" next to the bundle.

![Activate Bundle](/assets/images/ssl-tls-bundle-activate.png)

When a bundle is activated, the certificate and CA are installed on your app's web nodes, allowing the secure transfer of data over https.
