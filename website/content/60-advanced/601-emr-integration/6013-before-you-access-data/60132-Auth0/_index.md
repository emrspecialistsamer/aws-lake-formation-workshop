+++
title = "Update Auth0 Callback URL"
chapter = true
weight = 6011
autoNav = true
+++


<center><h3>Update Auth0 Callback URL</h3></center>

<div style="text-align: justify">
  <br/>
  1. Grab the value of <b>EMRMasterNodeDNS</b>  from CloudFormation Stack Output 
  <br/>
  2. Login into Auth0 account and select AWS SSO Application and under Setting tab replace Allowed Callback URls <b>public-dns</b> with EMR Master Node DNS 
  
 
  <br/>
  
  <img src="/images/auth0-dns-callbackupdate.png" title="Update Auth0 Callback URL" style="margin:15px 0px; border:1px solid black"/>
  
  <br/>
  3. Scroll down to bottom of the page and click on SAVE CHANGES
  
</div>