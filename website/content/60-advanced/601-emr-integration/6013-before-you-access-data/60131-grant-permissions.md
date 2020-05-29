+++
title = "Grant Permissions"
chapter = false
weight = 60131
autoNav = true
+++

<div style="text-align: justify">
    As part of this exercise, we will treat <b>emr-developer</b> (the account you created in the Auth0/Okta account) as a developer, who has access to only a few tables and columns. You can create additional users in Auth0/Okta and define different permissions in AWS Lake Formation
  <br/><br/>To set permissions for this user, login into AWS console as the <b>lf-admin</b> user (default password: Password1!). You can get a console login URL from CloudFormation template output as shown below.
    <img src="/images/cfn-complete-3.png" style="margin:15px 0px; border:1px solid black"/>
    <br/>Follow these steps to update Lake Formation permissions for IdP user.
    <ol>
        <li>On the AWS Lake Formation console, click on the <b>Data permissions</b> section.<img src="/images/DataPermissions.png" height="400" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Then click on the <b>Grant</b> button.<img src="/images/DataPermissions-Grant.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>On the window that pops up, fill out <b>Active Directory users and groups (EMR beta only)</b> field based on your IdP provider.
        <br/><br/><b>For Auth0</b><br/>
        arn:aws:iam::<b style="color:red">account-id</b>:saml-provider/auth0SAMLProvider:user/emr-developer
        <br/><br/><b>For Okta</b><br/>
        arn:aws:iam::<b style="color:red">account-id</b>:saml-provider/oktaSAMLProvider:user/emr-developer
        <br/><br/><b>For AD FS</b><br/>
        arn:aws:iam::<b style="color:red">account-id</b>:saml-provider/ADFSSAMLProvider:user/emr-developer
        <br/><br/><b>Note:</b> Replace <b style="color:red">account-id</b> with your AWS account id.</li>
        {{% notice info %}}Replace account-id with your AWS account id..
        {{% /notice %}}
        <li>Choose <b>tpc</b> for the database and select the following two tables with <b>Select</b> as the only Table permissions:
            <ul>
                <li>dl_tpc_web_page</li>
                <li>dl_tpc_web_sales</li>
            </ul><br/><i>Please ignore the tables that start with an underscore, those are temp tables.</i><img src="/images/lf-emr-grant-SELECT-twotables.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Leave the <b>Grantable permissions</b> unselected and click on the <b>Grant</b> button.</li>
        <li>Repeat Step 1 and 2 but this time give the user SELECT permission to only four columns on the <b>dl_tpc_customer</b> table as shown in the below screen.
        <ul>
            <li>c_first_sales_date_sk</li>
            <li>c_first_name</li>
            <li>c_last_name</li>
            <li>c_first_shipto_date_sk</li>
        </ul><img src="/images/lf-emr-grant-SELECT-columns.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Leave the <b> Grantable permissions </b> unselected and click on the <b>Grant</b> button.</li>
    </ol>
</div>

