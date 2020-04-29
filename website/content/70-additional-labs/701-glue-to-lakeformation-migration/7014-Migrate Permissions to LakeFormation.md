+++
title = "Migrate Permissions to Lake Formation  "
chapter = true
weight = 7014
+++

<div style="text-align: left">
   In this section we will migrate the Glue permissions to LakeFormation permissions
<ol start="1">
<li>Login back as <strong>lf-admin</strong></li>
<li>Use Cloud9 to run the following command for both the users(glueuser1 and glueuser2), <strong>whose permissions are being upgraded.</strong></li>

<p>aws iam list-policies-granting-service-access --arn arn:aws:iam::[<strong>AccountID</strong>]:user/glueuser1 --service-namespaces glue</p>

<img src="/images/gluemigration033.png" style="margin:15px 0px; border:1px solid black"/>
</ol>

<ol start="3">

<li>Using the information collected in previous step, grant AWS Lake Formation permissions to match the AWS Glue permissions in policy <strong>GlueProdPolicy</strong> and <strong>GlueTestPolicy</strong></li>
<li>In the navigation pane, choose&nbsp;<strong>Data permissions</strong>.</li>
<li>Choose&nbsp;<strong>Grant</strong>.</li>
<li>In the&nbsp;<strong>Grant permissions</strong>&nbsp;dialog box, provide the following information:
<ol>
<li>For&nbsp;<strong>IAM users and roles</strong>, choose <strong>glueuser1</strong></li>
<li>For&nbsp;<strong>Database</strong>, choose the database on which to grant permissions. Example: <strong>amazonprod</strong></li>
<li>For&nbsp;<strong>Database permissions</strong>, select the permissions that you want to grant.</li>
<li>For <strong>Table</strong> permissions, select the table name.</li>
<li>(Optional) For&nbsp;<strong>Grantable permissions</strong>, don&rsquo;t do anything</li>
<img src="/images/gluemigration018.png" style="margin:15px 0px; border:1px solid black"/>
</ol>
</li>
</ol>

<ol start="7">
<li>Follow same process to grant permissions to glueuser2</li>
<li>Now, give the two users permissions to use Lake Formation via the IAM policies created. Attach <strong>LakeFormationDataAccess</strong> policy to the <strong>two</strong> users:glueuser1 and glueuser2. At this point in workshop, user policy list should look like:</li>


<img src="/images/gluemigration019.png" style="margin:15px 0px; border:1px solid black" />
</ol>

<ol start="9">
<li>Now, we will make switch to lake formation access model. <strong>It is recommended</strong> to upgrade to new model, one S3 bucket location at time. Repeat the process for each bucket that are referenced by your data catalog. Before registering a location, perform a verification step to ensure that the correct principals have the required Lake Formation permissions. For this, log in as admin to Cloud9 console you created. We will need to create an <b>admin</b> profile so will have to disable AWS managed temporary credentials as in image below. Use AWS Cloud9-->Preferences-->AWS Settings</li>

<img src="/images/gluemigration020.png" style="margin:15px 0px; border:1px solid black" />
</ol>

<ol start="10">
<li>Go to IAM service and find credentials for admin user that you will need to create admin profile. In our case user is <strong>lf-admin</strong>. Run  commands below :</li>

<img src="/images/gluemigration021.png" style="margin:15px 0px; border:1px solid black"/>
</ol>
<ol start="13">

<p><strong>aws configure --profile admin</strong> </p>
<p>enter information captured from previous steps and use region as <b>us-east-1 </b>and output format as <b>json</b></p>


<p><strong>aws lakeformation get-effective-permissions-for-path --resource-arn arn:aws:s3:::lf-data-lake-bucket-glue-lf-migration-[AccountID]&nbsp;&nbsp; --profile admin</strong></p>
<img src="/images/gluemigration022.png" style="margin:15px 0px; border:1px solid black" />
</ol>

<ol start="11">
<li>Output will be a json file that gives list of IAM principles with access to that S3 location.Now revoke IAMAllowedPrincipalson each table and database that you identified for the location </li>

<li>In the navigation pane, choose&nbsp;<strong>Tables</strong></li>
<ol>
<li>On the&nbsp;<strong>Tables</strong> page, select the radio button next to the desired table, amazon_reviews_test</li>
<li>On the&nbsp;<strong>Actions</strong> menu, choose&nbsp;<strong>Revoke</strong>.</li>
<li>In the&nbsp;<strong>Revoke permissions</strong>dialog box, in the&nbsp;<strong>IAM users and roles</strong>&nbsp;list, scroll down to the&nbsp;<strong>Group</strong>&nbsp;heading, and choose&nbsp;<strong>IAMAllowedPrincipals</strong>.</li>
<li>Under&nbsp;<strong>Table permissions</strong>, ensure that&nbsp;<strong>Super</strong>is selected, and then choose&nbsp;<strong>Revoke</strong>.</li>
</ol>
<img src="/images/gluemigration023.png" style="margin:15px 0px; border:1px solid black" width="700" height="700
"/>
</ol>

<ol start="13">
<li>Do same for test table(amazon_reviews_test)</li>
<img src="/images/gluemigration024.png" style="margin:15px 0px; border:1px solid black" width="700" height="700
"/>
<li>Now, let us do for databases. In the navigation pane, choose&nbsp;<strong>Databases</strong>.</li>
<ol>
<li>On the&nbsp;<strong>Databases</strong> page, select the radio button next to the desired database(<strong>amazonprod</strong>)</li>
<li>On the&nbsp;<strong>Actions</strong> menu, choose&nbsp;<strong>revoke</strong> permissions as below</li>
</ol>
<img src="/images/gluemigration025.png" style="margin:15px 0px; border:1px solid black" width="700" height="700
"/>
</ol>
<ol start="15">
<li><strong>Do same for amazontest DB</strong></li>

<li>On the&nbsp;<strong>Edit database</strong>page, clear&nbsp;<strong>Use only IAM access control for new tables in this database</strong>, and then choose&nbsp;<strong>Save</strong>. Do same for <strong>amazontest</strong> DB</li>
<img src="/images/gluemigration026.png" style="margin:15px 0px; border:1px solid black" width="700" height="700
"/>

<li>Now, register the Amazon S3 location with Lake Formation.</li>

<ol>
<li>In the navigation pane, under&nbsp;<strong>Register and Ingest</strong>, choose&nbsp;<strong>Data lake locations</strong>.</li>
<li>Choose&nbsp;<strong>Register location</strong>, and then choose&nbsp;<strong>Browse</strong>to select an Amazon Simple Storage Service (Amazon S3) path.</li>

<img src="/images/gluemigration027.png" style="margin:15px 0px; border:1px solid black" width="500" height="400
"/>

<li>For&nbsp;<strong>IAM role</strong>, choose <strong>AWSServiceRoleForLakeFormationDataAccess</strong></li>
<li>Choose&nbsp;<strong>Register location</strong>.</li>

<img src="/images/gluemigration028.png" style="margin:15px 0px; border:1px solid black" width="700" height="700
"/>
</ol>
</ol>

<ol start="18">

<li>Next, secure all new Data Catalog resources by changing the default <strong>DataCatalog</strong></li>
<ol>
<li>In the navigation pane, choose&nbsp;<strong>Settings</strong>.</li>
<li>On the&nbsp;<strong>Data catalog settings</strong>page, clear both check boxes, and then choose&nbsp;<strong>Save</strong>.</li>
<img src="/images/gluemigration029.png" style="margin:15px 0px; border:1px solid black" width="700" height="700
"/>
</ol>
</ol>

<ol start="19">
<li>Next step is to grant users access to additional databases or tables in the future by adding policy <strong>GlueFullReadAccess</strong> with each user. It will look like</li>
<img src="/images/gluemigration030.png" style="margin:15px 0px; border:1px solid black" width="700" height="400
"/>
<li>As last step, clean up existing IAM policies.
<ol>
<li>Remove <strong>GlueProdPolicy</strong> from glueuser1 and <strong>GlueTestPolicy</strong> from glueuser2</li>
<li>Remove Bucket Policies permission for <strong>glueuser1</strong> and <strong>glueuser2</strong></li>
<img src="/images/gluemigration031.png" style="margin:15px 0px; border:1px solid black" width="700" height="700
"/>

</li>



<li>Log In as <strong>glueuser1</strong> and run Athena query. Do same for <strong>glueuser2.</strong> You will notice that even after removing bucket policies and glue catalogue permissions, user can run Athena. It is because LakeFormation is controlling the access now. <b>You have successfully migrated from Glue to LakeFormation security model.</b> </li>
</ol>
</ol>
<ol start="21">
<li>Final state of <strong>glueuser1</strong> and <strong>glueuser2</strong> will be similar to</li>
<img src="/images/gluemigration032.png" style="margin:15px 0px; border:1px solid black" 
/>
</ol>
<p>&nbsp;</p>
</div>
