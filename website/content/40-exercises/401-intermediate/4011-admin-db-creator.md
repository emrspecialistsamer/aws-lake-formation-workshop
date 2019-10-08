+++
title = "Admin & Database Creators"
chapter = true
weight = 4011
+++


<div style="text-align: left">
    A data lake administrator is an IAM user or IAM role that has the ability to grant any principal (including self) any permission on any Data Catalog resource. Designate a data lake administrator as the first user of the Data Catalog.
    <ol>
        <li>Open a new browser (or Incognito window) and sign in to the AWS Management Console as an <b><i>lf-admin</i></b> user (default password: Password1!) and open the Lake Formation console at <a
                href="https://console.aws.amazon.com/lakeformation/home?region=us-east-1">https://console.aws.amazon.com/lake-formation</a>.</li>
        <li>First, you use the Lake Formation console to designate a data lake administrator to allow access to any Lake
            Formation resource. Click on the <b>Add administrators</b> button to create administrator for your Data
            Lake.
            <img src="/images/welcometolf.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select <b>lf-admin</b> IAM user from the drop down list. For the rest of workshop, this user will be considered as a data lake administrator and will have full access to data lake.
            <img src="/images/datalakeadmin.png" style="margin:15px 0px; border:1px solid black"/></li>
    </ol>
</div>