+++
title = "Grant Permissions"
chapter = true
weight = 60131
+++

<center><h3>Grant Permission to IdP (Identity Provider) user </h3></center>
<div style="text-align: justify">
  <br/><br/>
  Part of this exercise we will treat IdP account owner ( the email you used to create the Auth0/Okta account ) as developer role and only provide access to few tables and columns to demonstrate the fine grained access control.
  <br/><br/>
  You can create additional users in Auth0/Okta with valid emails and define different permissions in AWS Lake Formation, <br/><br/>To set permissions for a Auth0 developer, navigate to the AWS Lake Formation service console.  
   
 
  <br/>

  
  
   <ol>
      <li>On the AWS Lake Formation console, click on <b>Data permissions</b> section on the left hand side <img src="/images/DataPermissions.png" style="margin:15px 0px; border:1px solid black"/>
      </li>
      <li>Then click on <b>Grant</b> button <img src="/images/DataPermissions-Grant.png" style="margin:15px 0px; border:1px solid black"/>
      </li>
      <li>On the window that pops up
        <br/>Fill out Active Directory users and groups (EMR beta only) with  <br/><br/>arn:aws:iam::<b>account-id</b>:saml-provider/auth0SAMLProvider:user/<b>username</b> in case of Auth0 <br/><br/>or arn:aws:iam::<b>account-id</b>:saml-provider/oktaSAMLProvider:user/<b>username</b> in case of Okta, 
        <br/><br/>Choose <b>tpc</b> for the database and select <i>dl_tpc_web_page</i> and <i>dl_tpc_web_sales</i> as the tables with <b>Select</b> as the only Table permission.<br/>
        <br/><b>Note:</b> Replace <b>account-id</b> with your AWS account-id  and <b>username</b> with valid username of the IdP username ( In case of Auth0, use the username portion of email used).
        <br/><b>Note:</b> Please ignore the tables that start with an underscore, those are temp tables.<img src="/images/lf-emr-grant-SELECT-twotables.png" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Leave the <b> Grantable permissions </b> unselected and click on the <b>Grant</b> button.</li>
      
      
   <li> Repete Step 1, 2  but this time give the user SELECT on only four columns on <i> dl_tpc_customer </i> table </li>
      <li>On the window that pops up
                 <br/>Fill out Active Directory users and groups (EMR beta only) with  <br/><br/>arn:aws:iam::<b>account-id</b>:saml-provider/auth0SAMLProvider:user/<b>username</b> in case of Auth0 <br/><br/>or arn:aws:iam::<b>account-id</b>:saml-provider/oktaSAMLProvider:user/<b>username</b> in case of Okta, 
                 <br/><br/>Choose <b>tpc</b> for the database and select <b><i>dl_tpc_customer</i> </b> as table and under Column - optionl drop down select <b>Include columns</b> and under Include columns dropdown select these four column <i>c_first_sales_date_sk, c_first_name,c_last_name,c_first_shipto_date_sk </i> one at time with <b>Select</b> as the only Table permission.<br/>
                  <br/><b>Note:</b> Replace <b>account-id</b> with your AWS account-id  and <b>username</b> with valid IdP username ( In case of Auth0, use the username portion of email used).
                  <br/><b>Note:</b> Please ignore the tables that start with an underscore, those are temp tables.<img src="/images/lf-emr-grant-SELECT-columns.png" style="margin:15px 0px; border:1px solid black"/></li>
   <li>Leave the <b> Grantable permissions </b> unselected and click on the <b>Grant</b> button.</li>
                
         
            
          
   </ol>
  </div>

