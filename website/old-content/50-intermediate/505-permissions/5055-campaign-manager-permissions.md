+++
title = "Campaign Manager Permissions"
chapter = true
weight = 5055
+++

<div style="text-align: justify">
  Let's return to the Lake Formation console to set data permissions for a campaign manager.
  <div style="text-align: left">
    <ol>
      <li>Click on <b>Grant</b> button in the Data permissions window <img src="/images/DataPermissions-Grant.png" style="margin:15px 0px; border:1px solid black"/>
      </li>
      <li>On the window that pops up, for IAM users and roles drop down select <b>lf-campaign-manager</b>, choose <b>tpc</b> for the database with all tables except for the dl_tpc_web_page table and <b>Select</b> as the only Table permission <img src="/images/campaign-manager-perms.png" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Leave the <b> Grantable permissions </b> unselected and click on the <b>Grant</b> button.</li>
  </ol>
  Let's now test out these data permissions we defined for different personas with Amazon Athena.
  </div>
</div>