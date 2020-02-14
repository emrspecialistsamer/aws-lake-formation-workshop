+++
title = "Configure Auth0"
weight = 30511
chapter = true
+++

<center><h4>Configure Auth0</h4></center>

<div style="text-align: justify">

   
   <br/><br/>
   
    <br/>
    1. Create a free tier account in  https://auth0.com/ with valid emial-id 
    <br/>
    2. Log in to the Auth0 account, and create a new Application and enter "LakeFormation" for Name and Select Regular Web Application as application type and click on Create Button
    <br/> 
        <img src="/images/create-auth0-application.png" title="Create application" style="margin:15px 0px; border:1px solid black"/>
    <br/>
    3. After creating the application, On the Addons tab enable SAML2 WEB APP which will pop-up following UI, populate below Application Callback URL(Later you will replace the <b>public-dns</b> with actual Amazon EMR Master Node DNS  once we create the cluster). 
    <br/><br/>
     <b>https://<b>public-dns</b>:8442/gateway/knoxsso/api/v1/websso?pac4jCallback=true&client_name=SAML2Client </b>
    <br/><br/>
    and  paste the following SAML configuration code into Settings:
    <br/><br/>
    
    <pre>
    {
    "audience": "urn:amazon:webservices",
           "mappings": {
             "email": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress",
             "name": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name"
           },
           "createUpnClaim": false,
           "passthroughClaimsWithNoMapping": false,
           "mapUnknownClaimsAsIs": false,
           "mapIdentities": false,
           "nameIdentifierFormat": "urn:oasis:names:tc:SAML:2.0:nameid-format:persistent",
           "nameIdentifierProbes": [
             "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress"
           ]
     }
    </pre>
    
    
   <img src="/images/auth0-Addon.png" title="Addon: SAML2 Web App" style="margin:15px 0px; border:1px solid black"/>
   <br/>
   Scroll to the bottom and click <b>Enable</b>.
   <br/> <br/>
    On the same UI, click on the <b>Usage</b> tab and Download Identity Provider Metadata. You'll need to configure Auth0 as the Identity Provider (IdP) for AWS, which requires you to provide an appropriate metadata to AWS. You can obtain a file containing this information by clicking Identity Provider Metadata Download link. Keep this in your local computer, also we will upload this metadata file into S3 bucket later. 
   <img src="/images/auth0-metadatadownload.png" title="Addon: SAML2 Web App Usage" style="margin:15px 0px; border:1px solid black"/>
    
   <br/>
   
   AWS roles specified will be associated with an IAM policy that enforces the type of access allowed to a AWS Lake Formation fine grain access control to S3 with Amazon EMR .  To map an AWS role to a user, you'll need to create a rule (https://auth0.com/docs/rules) for this purpose.
   
   <br/><br/>
   To create Rule, select Rules on left navigation on your Auth0 Account, select Empty rule and enter following function definition and name the rule as <b>"LF-Rule"</b> and save the changes.
   
   <br/><br/>
   Replace the <b>account-id</b> with the AWS Account Id
   
   <br/><br/>
   
   <pre>
   
   function (user, context, callback) {
         user.awsRole = 'arn:aws:iam::account-id:role/LF-Auth0-Role,arn:aws:iam::account-id:saml-provider/auth0SAMLProvider';
         // the username must not contain "@" - as it is not a valid Linux username
         user.glueUser = user.name.replace(/@.*/, ''); 
        
       context.samlConfiguration.mappings = {
           'https://aws.amazon.com/SAML/Attributes/Role': 'awsRole',
           'https://aws.amazon.com/SAML/Attributes/RoleSessionName': 'glueUser',
           'https://lakeformation.amazon.com/SAML/Attributes/Username': 'glueUser'
        };
        
       callback(null, user, context);
   }
  
  </pre>
   <img src="/images/auth0-createrule.png" title="Auth0 Create Rule" style="margin:15px 0px; border:1px solid black"/>
  
   <br/>
   
   <b>Reference: </b> <a href="https://auth0.com/docs/integrations/aws">AWS Integration in Auth0 </a> – This page on the Auth0 documentation website describes how to set up single sign-on (SSO) with the AWS Management Console. It also includes a JavaScript example.

 
   
</div>