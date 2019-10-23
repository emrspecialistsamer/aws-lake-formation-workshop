+++
title = "Developer Permissions"
chapter = true
weight = 40152
+++

<div style="text-align: justify">
  To set permissions for a developer, navigate to the Lake Formation service console.
  <div style="text-align: left">
    <ol>
      <li>On the Lake Formation console, click on <b>Data permissions</b> section on the left hand side <img src="/images/DataPermissions.png" style="margin:15px 0px; border:1px solid black"/>
      </li>
      <li>Then click on <b>Grant</b> button <img src="/images/DataPermissions-Grant.png" style="margin:15px 0px; border:1px solid black"/>
      </li>
      <li>On the window that pops up, fill out IAM users and roles as <b>lf-developer</b>, choose <b>tpc</b> for the database and select <i>dl_tpc_web_page</i> and <i>dl_tpc_web_sales</i> as the tables with <b>Select</b> as the only Table permission.<br/>
        <br/><b>Note:</b> Please ignore the tables that start with an underscore, those are temp tables.<img src="/images/developer-perms.png" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Leave the <b> Grantable permissions </b> unselected and click on the <b>Grant</b> button.</li>
    </ol>
  </div>
</div>
