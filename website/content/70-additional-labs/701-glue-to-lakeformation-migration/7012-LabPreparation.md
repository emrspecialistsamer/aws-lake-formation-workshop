+++
title = "Lab Preparation"
chapter = true
weight = 7012
+++
<center><h3>Lab Preparation</h3></center>

<div style="text-align: left">
   
  <ol>
<li>Run the Cfn template as <strong>lf-admin</strong>, <strong>Password</strong>= Password1!</li>
 <a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=Lake-Formation-With-EMR-Workshop&templateURL=https://aws-data-analytics-workshops.s3.amazonaws.com/lake-formation-workshop/cfn/lf-emr-workshop.template" target="_blank"><img src="/images/LaunchStack.svg" title="LF Workshop With EMR CFN" width="140" height="60" style="margin:10px 0px"/></a>
    <b>NOTE:</b> This template is created for the us-east-1 region (N. Virginia) and will not work in other regions.<br/>
    Enter the 3 variables as shown in image below, these were created as part of the beginner lab.

    <img src="/images/gluemigration001.png" style="margin:15px 0px; border:1px solid black"  vertical-align:middle/>
</ol>

<ol start="2">
<li>Cfn template will create the following resources
<ul>
<li>2 IAM users: glue-dev-user and glue-admin  with <strong>Password</strong>= Password1!</li>
<li>1 Role: AWSGlueServiceRole-gluedemo</li>
<li>Cloud9 service to use CLI commands</li>
<li>IAM Policies: AthenaAccessPolicy, LakeFormationDataAccess, GlueFullReadAccess, GlueProdPolicy, GlueTestPolicy, GlueCrawlerPolicy</li>
<li>1 S3 bucket</li>
<li>S3 bucket policies</li>
<li>2 Athena Named Query: 1 for Prod and 1 for Test</li>
<li>2 Glue Databases: 1 for Prod and 1 for Test</li>
<li>2 Glue crawler jobs that will extract schema for "amazon reviews" data and add the metadata to glue catalogue</li>
</ul>
</li>
</ol>

</div>
