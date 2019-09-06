+++
title = "Business Analyst Permissions"
chapter = true
weight = 40154
+++

<div style="text-align: justify">
  Let's continue to add additional data permissions to the business-analyst persona.
  <div style="text-align: left">
    <ol>
      <li>Click on <b>Grant</b> button in the Data permissions window <img src="/images/DataPermissions-Grant.png" style="margin:15px 0px; border:1px solid black"/>
      </li>
      <li>On the window that pops up, for IAM users and roles drop down select <b>business-analyst</b>, choose <b>tpc</b> for the database and select all the tables except the <b>customer</b> table with <b>Select</b> as the only Table permission <img src="/images/business-analyst-perms-2.png" style="margin:15px 0px; border:1px solid black"/>
      <li>Leave the <b> Grantable permissions </b> unselected and click on the <b>Grant</b> button.
      <li>For all the tables selected above, a <b>business-analyst</b> will be able to see all columns.</li>
      <li>Let's define the permissions for the <b>campaign-manager</b> persona next.</li>
    </ol>
  </div>
</div>