+++
title = "Connection"
chapter = true
weight = 4011
+++

<div style="text-align: left">
    The CloudFormation template in the <b>Prerequisite</b> section created a temporary database in RDS with TPC data. In this exercise, you will create a Glue Connection to connect to that RDS database.
    <ol>
        <li>Click on the <b>Connections</b> option on the left and then click on <b>Add connection</b> button.<img src="/images/glueconnection1.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>In this section, you will provide connection details. Enter <b>mysql-connector</b> as the <b>Connection Name</b>, select <b>Amazon RDS</b> from the <b>Connection type</b> and <b>MySQL</b> as the <b>Database engine</b>, and click Next.<img src="/images/glueconnection2.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>You should be able to see <b>tpc-database</b> under instance, this is the RDS instance which was created by AWS CloudFormation template. When you select that database, Database name and Username fields will be populated automatically. Enter the database user password (default: <b>BigData26!</b>) in the <b>Password</b> field, and click <b>Next</b>.<img src="/images/glueconnection3.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Next window will show all connection information that you provided, verify that information, and click <b>Finish</b>.</li>
        <li>Verify the newly created connection from the connection list, select that connect using the checkbox and click on <b>Test connection</b> to check the connection.<img src="/images/glueconnection4.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select IAM role <b>LF-GlueServiceRole</b> from the dropdown and click <b>Test connection</b>.<img src="/images/glueconnection5.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>If the connection is successful, a success message should be displayed. Proceed to the next chapter.<img src="/images/glueconnection6.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>In the next section, you will use this connection to create a JDBC crawler to discover schema in the TPC database.</li>
    </ol>
</div>
