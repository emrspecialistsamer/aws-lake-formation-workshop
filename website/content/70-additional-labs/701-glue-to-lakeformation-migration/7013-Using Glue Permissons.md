+++
title = "Using Glue Permissions"
chapter = true
weight = 7013
+++

<div style="text-align: left">
    We will now use glue model to access data from Athena
    <ol>

<ol>
<li>Login as glueuser1 in Athena, this user can only see Prod DB and table</li>
<li>Configure S3 bucket (<strong>lf-workshop-AccountID</strong>) for Athena query</li>
</ol>

<img src="/images/gluemigration013.png" style="margin:15px 0px; border:1px solid black" width="700" height="400"/>
<ol start="3">
<li>Go to Saved Queries and select <strong>Prod-Query </strong>to run and view results. Try using Test-Query and you will get <strong>insufficient permissions</strong> message</li>
</ol>
<img src="/images/gluemigration014.png" style="margin:15px 0px; border:1px solid black"/>
<ol start="4">
<li>Login as glueuser2 in Athena, this user can only see Test DB and table</li>
<li>Configure S3 bucket (<strong>lf-workshop-AccountID</strong>) for Athena query as you did for <strong>glueuser1</strong></li>

<li>Go to Saved Queries and select <strong>Test-Query </strong>to run and view results. Try using Prod-Query and you will get <strong>insufficient permissions</strong> message</li>
</ol>
<img src="/images/gluemigration015.png" style="margin:15px 0px; border:1px solid black"/>
<ol start="7">
<li>As an <strong>optional</strong> test, remove bucket permission for the users from data lake bucket and Athena query will fail. You will have to log as <strong>lf</strong>-<strong>admin </strong>to make changes to the bucket policy. <strong>Example</strong>: Remove glueuser1 or glueuser2. <strong>Please put the policy back after you removed it. You will need it for rest of lab.</strong></li>
</ol>
<img src="/images/gluemigration016.png" style="margin:15px 0px; border:1px solid black"/>

<ol start="8">
<li>You will see similar error as below after you run the Athena query</li>
<img src="/images/gluemigration017.png" style="margin:15px 0px; border:1px solid black"/>
</ol>



