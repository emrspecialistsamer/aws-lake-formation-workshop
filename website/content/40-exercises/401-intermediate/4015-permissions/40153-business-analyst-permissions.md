+++
title = "Business Analyst Permissions"
chapter = true
weight = 40153
+++

<div style="text-align: justify">

  Let's return to the Lake Formation console to set data permissions for a business-analyst persona.

  <div style="text-align: left">

  <ol>


    <li> Click on <b>Grant</b> button in the Data permissions window <img src="/images/DataPermissions-Grant.png" style="margin:15px 0px; border:1px solid black"/>
    </li>
    <li> On the window that pops up, for IAM users and roles drop down select <b>business-analyst</b>, choose <b>tpc</b> for the database and select <b>tpc_customer</b> table with PII columns excluded and <b>Select</b> as the only Table permission <img
            src="/images/business-analyst-perms-0.png" style="margin:15px 0px; border:1px solid black"/>
            <img
                    src="/images/business-analyst-perms-1.png" style="margin:15px 0px; border:1px solid black"/>
    <li> Leave the <b> Grantable permissions </b> unselected and click on the <b>Grant</b> button.
    <li> For the customer table, a <b>business-analyst</b> will only be able to see non-PII columns. </li>



</ol>

</div>
