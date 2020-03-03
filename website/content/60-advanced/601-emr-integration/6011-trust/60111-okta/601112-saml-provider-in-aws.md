+++
title = "Creating SAML Idp in AWS "
weight = 601112
chapter = true
+++

<center><h3>Create SAML IDP In AWS</h3></center>

<div style="text-align: justify">

   <br/>
   <h5>In the IAM console, create a SAML identity provider entity.</h5>
  
   <ol> 
    <li>Login into AWS console ( If Hashcode given use chapter <a href="/30-howtostart/302-aws-event.html" > AWS Event </a> to login) or as Administrator you created in <a href="/30-howtostart/301-self-paced.html" > Self Paced Labs </a></li>
    <li>Open the AWS IAM console at <a
                     href="https://console.aws.amazon.com/iam/home?region=us-east-1">https://console.aws.amazon.com/iam</a>.</li>
    
   <li>In the navigation pane, choose <b>Identity Providers</b>, <b>Create Provider</b>. </li>
     
   <li>For <b>Provider Type</b>, Choose a provider type, <b>SAML</b>. </li>
  
   <li>Enter a name for the identity provider as <b>oktaSAMLProvider</b> </li>
   
   <li>For <b>Metadata Document</b>, click <b>Choose File</b>, specify the SAML metadata document that you downloaded from your IdP and choose <b>Open</b>.</li>
  
   <li>Verify the information that you have provided, and click <b>Create</b>.</li>
   
   <img src="/images/okta-samlproviderinaws.png" title="SAML IDP in AWS" style="margin:15px 0px; border:1px solid black"/>
     
   </ol>  
   
</div>