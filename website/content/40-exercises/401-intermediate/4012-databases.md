+++
title = "Databases"
chapter = true
weight = 4012
+++

<div style="text-align: left">
    <ol>
        <li>Log back in as a <b>admin</b> user to the AWS Management Console and open the Lake Formation console at <a
                href="https://console.aws.amazon.com/lakeformation/home?region=us-east-1">https://console.aws.amazon.com/lake-formation</a>.</li>
        <li>Click on the <b>Databases</b> option on the left and then click on <b>Create database</b> button.<img src="/images/createdatabase1.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Since we are planning to build the data lake for TPC data, name the database as <b>tpc</b>.</li>
        <li>On the <b>Location</b> box, select the S3 data lake path which was created through CloudFormation. You can also find the S3 path from the CloudFormation output tab.</li>
        <li>Leave rest of the options as default and click on <b>Create database</b> button.<img src="/images/createdatabase2.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>If the database creation is successful, it will look like this:<img src="/images/createdatabase3.png" style="margin:15px 0px; border:1px solid black"/></li>
    </ol>
</div>