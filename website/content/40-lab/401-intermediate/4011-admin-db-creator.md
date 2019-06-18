+++
title = "Admin & Database Creators"
chapter = true
weight = 4011
+++


<div style="text-align: left">
    A data lake administrator is an IAM user or IAM role that has the ability to grant any principal (including self) any permission on any Data Catalog resource. Designate a data lake administrator as the first user of the Data Catalog.
    <ol>
        <li>Sign in to the AWS Management Console and open the Lake Formation console at <a
                href="https://console.aws.amazon.com/lakeformation/home?region=us-east-1">https://console.aws.amazon.com/lake-formation</a>.</li>
        <li>First, you use the Lake Formation console to designate a data lake administrator to allow access to any Lake
            Formation resource. Click on the <b>Add administrators</b> button to create administrator for your Data
            Lake.
            <img src="/images/welcometolf.png" style="margin:15px 0px"/></li>
        <li>Select <b>admin</b> IAM user from the drop down list. For the rest of workshop, this user will be considered as a data lake administrator and will have full access to data lake.</li>
        <li>Log out from the Lake Formation console.</li>
    </ol>
</div>