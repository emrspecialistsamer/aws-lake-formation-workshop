+++
title = "Creating SAML Idp in AWS "
weight = 601102
chapter = true
+++

<center><h3>Create SAML IDP In AWS</h3></center>

<div style="text-align: justify">

   <br/>
   <h5>In the IAM console, create a SAML identity provider entity.</h5>
   
   <br/> 
   1. Sign in to the AWS Management Console and open the IAM console at https://console.aws.amazon.com/iam/.
   <br/>
   2. In the navigation pane, choose <b>Identity Providers</b>, <b>Create Provider</b>.
   <br/>
   3. For <b>Provider Type</b>, Choose a provider type, <b>SAML</b>.
   <br/>
   4. Enter a name for the identity provider as <b>auth0SAMLProvider</b>
   <br/>
   5. For <b>Metadata Document</b>, click <b>Choose File</b>, specify the SAML metadata document that you downloaded from your IdP and choose <b>Open</b>.
   <br/>
   6. Verify the information that you have provided, and click <b>Create</b>.
   
   <br/>
   
   <img src="/images/auth0-saml-idp.png" title="SAML IDP in AWS" style="margin:15px 0px; border:1px solid black"/>
     
     
   
</div>