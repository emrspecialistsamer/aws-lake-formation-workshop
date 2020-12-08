+++
title = "Creating SAML IdP in AWS "
weight = 601102
chapter = false
+++

<div style="text-align: justify">
   In this section, you will create an Identity provider in your AWS account to integrate with Auth0. Follow these steps:
   <ol> 
       <li>Login into AWS console (if hashcode is given use chapter <a href="/30-howtostart/302-aws-event.html">AWS Event</a> to login) or as Administrator you created in <a href="/30-howtostart/301-self-paced.html" > Self Paced Labs</a>.</li>
       <li>Open the AWS IAM console at <a href="https://console.aws.amazon.com/iam/home?region=us-east-1">https://console.aws.amazon.com/iam</a>.</li>
      <li>In the navigation pane, choose <b>Identity Providers</b>, and then click on <b>Create Provider</b>.</li>
      <li>For the <b>Provider Type</b>, choose <b>SAML</b> as the provider type. Enter <b>auth0SAMLProvider</b> for the provider name. For <b>Metadata Document</b>, click <b>Choose File</b> to select the SAML metadata document that you downloaded from your IdP and click on the <b>Next</b> button to proceed.<img src="/images/auth0-saml-idp1.png" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Verify the information that you have provided, and click <b>Create</b> to finish up the creation process.<img src="/images/auth0-saml-idp2.png" style="margin:15px 0px; border:1px solid black"/></li>
   </ol>
</div>