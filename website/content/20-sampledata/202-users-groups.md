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
<<<<<<< HEAD
        <li> "developer" can only see web_sales & web_page</li>
        <li> "campaign_manager" can see everything except web_page</li>
        <li> "business_analyst" can see everything except web_page, web_sales and cannot check customer's PII</li>
        <li> "admin" has all access to LakeFormation databases and tables and make any changes to them </li>

=======
        <li><b>developer</b> can only see <b>web_page</b> & <b>web_site</b> tables.</li>
        <li><b>campaign_manager</b> can see everything except <b>web_site</b> table.</li>
        <li><b>business_analyst</b> can see everything except <b>web_page</b>, <b>web_site</b> and cannot check customer personal information, for example: email address, address, date of birth, etc.</li>
        <li><b>admin</b> has access to all tables, Lake Formation components and can make any changes on Lake Formation.</li>
>>>>>>> origin/master
    </ul>
</div>
