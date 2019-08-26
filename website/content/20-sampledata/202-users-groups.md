+++
title = "Users & Groups"
chapter = true
weight = 202
+++

<div style="text-align: justify">
    <center><h2>Test Users & Groups</h2></center>
    To demonstrate different Lake Formation security capabilities, we will use few test users & group, where each of the
    user has different level of access to the data lake. The CloudFormation template that creates TPC data, also creates
    these sets of users and groups in an Active Directory.

    <ul>
        <li> "developer" can only see web_sales & web_page</li>
        <li> "campaign_manager" can see everything except web_page</li>
        <li> "business_analyst" can see everything except web_page, web_sales and cannot check customer's PII</li>
        <li> "admin" has all access to LakeFormation databases and tables and make any changes to them </li>

    </ul>
</div>
