+++
title = "Users & Groups"
chapter = true
weight = 302
+++

<div style="text-align: justify">
<center><h2>Test Users & Groups</h2></center>
To demonstrate different Lake Formation security capabilites, we will use few test users & group, where each of the user has different level of access to the data lake. The CloudFormation template that creates TPC data, also creates these sets of users and groups in an Active Directory.

<ul>
<li> "developer" can only see web_page & web_site </li>
<li>  "campaign_manager" can see everything except web_site </li>
<li>  "business_analyst" can see everything except web_page, web_site and cannot check customer pii </li>
<li> only "admin" has access to LF and make any changes on LF </li>

</ul>
</div>