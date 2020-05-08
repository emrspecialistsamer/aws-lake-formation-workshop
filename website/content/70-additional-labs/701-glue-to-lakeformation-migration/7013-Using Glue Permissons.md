+++
title = "Using Glue Permissions"
chapter = true
weight = 7013
+++

<center><h3>Using Glue Permissions</h3></center>
<div style="text-align: left">
    
  <ol> 
We will now use glue model to access data from Athena

<li>Login as <b>glue-admin</b> in Athena, this user can only see Prod database and table</li>
<li>Configure S3 bucket (<strong>lf-workshop-[AccountID]</strong>) for Athena query</li>
<img src="/images/gluemigration013.png" style="margin:15px 0px; border:1px solid black" width="700" height="400"/>
</ol>


<ol start="3">
<li>Go to Saved Queries and select <strong>Prod-Query </strong>to run and view results. Now, try using Test-Query and you will get <strong>insufficient permissions</strong> message</li>
<img src="/images/gluemigration014.png" style="margin:15px 0px; border:1px solid black"/>
</ol>

<ol start="4">
<li>Login as <b>glue-dev-user</b> in Athena, this user can only see Test database and table</li>
<li>Configure S3 bucket (<strong>lf-workshop-AccountID</strong>) for Athena query as you did for <strong>glue-admin</strong></li>

<li>Go to Saved Queries and select <strong>Test-Query </strong>to run and view results. Try using Prod-Query and you will get <strong>insufficient permissions</strong> message</li>
<img src="/images/gluemigration015.png" style="margin:15px 0px; border:1px solid black"/>
</ol>

<ol start="7">
<li>As an <strong>optional</strong> test, remove bucket permission for the users from data lake bucket and Athena query will fail. You will have to log as <strong>lf</strong>-<strong>admin </strong>to make changes to the bucket policy. <strong>Example</strong>: Remove glue-admin or glue-dev-user. <strong>Please put the policy back after you removed it. You will need it for rest of lab.</strong></li>

<img src="/images/gluemigration016.png" style="margin:15px 0px; border:1px solid black"/>
</ol>
<ol start="8">
<li>You will see similar error as below after you run the Athena query</li>
<img src="/images/gluemigration017.png" style="margin:15px 0px; border:1px solid black"/>
</ol>



