+++
title = "Update Okta Callback URL"
chapter = true
weight = 60133
autoNav = true
+++


<center><h3>Update Okta Callback URL</h3></center>

<div style="text-align: justify">

 <ol>
  <li> Copy the value of <b>EMRMasterNodeDNS</b> from CloudFormation Stack <b>Lake-Formation-With-EMR-WF</b> Output. </li>

  <li>Login into Okta account and Select Lake-Formation Application and under General tab Edit SAML Setting and replace Single sign on URL's <b>public-dns</b> with EMR Master Node DNS. </li>
  <img src="/images/okta-editsaml.png" title="Update Auth0 Callback URL" style="margin:15px 0px; border:1px solid black"/>
  
  <li>  Scroll down to bottom of the page and click on Next and click Finish on Feedback tab. </li>
  </ol>
  
</div>