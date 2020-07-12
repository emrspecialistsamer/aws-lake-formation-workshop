+++
title = "Lab Preparation"
chapter = true
weight = 7012
+++
<center><h3>Lab Preparation</h3></center>

<div style="text-align: left">
  <ol>
    <li>Run the Cfn template as <strong>lf-admin</strong>, <strong>Password</strong>: Password1!<a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=Lake-Formation-Migration&templateURL=https://aws-data-analytics-workshops.s3.amazonaws.com/lake-formation-workshop/cfn/lf-gluetolfmigration.template" target="_blank"><img src="/images/LaunchStack.svg" title="LF Migration" width="140" height="60" style="margin:10px 0px"/></a>
    <b>NOTE:</b> This template is created for the us-east-1 region (N. Virginia) and will not work in other regions.<br/>
      <h5>Executing the CloudFormation template</h5>
    Follow these steps to get to know more about this CloudFormation template and execute the template.
    <ul>
        <li>The CloudFormation template will take 2 parameters. <img src="/images/gluemigration001.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>The CloudFormation stack will roughly take 4-5 minutes to complete. </li>
        <li>Once the stack creation is completed, your AWS account will have all the required resources to run this exercise.</li>
    </ul>
    </li>

    <li>CFN template will create the following resources:
        <ul>
            <li>2 IAM users: glue-dev-user and glue-admin  with <strong>Password</strong>: Password1!</li>
            <li>1 Role: AWSGlueServiceRole-gluedemo</li>
            <li>Cloud9 service to use CLI commands</li>
            <li>IAM Policies: AthenaAccessPolicy, LakeFormationDataAccess, GlueFullReadAccess, GlueProdPolicy, GlueTestPolicy, GlueCrawlerPolicy</li>
            <li>2 S3 buckets: <strong>lf-data-lake-bucket-athenaresults-[AccountID]</strong>and <strong>lf-data-lake-bucket-glue-lf-migration-[AccountID]</strong></li>
            <li>S3 bucket policies</li>
            <li>2 Athena Named Query: 1 for Prod and 1 for Test</li>
            <li>2 Glue Databases: 1 for Prod and 1 for Test</li>
            <li>2 Glue crawler jobs that will extract schema for "amazon reviews" data and add the metadata to glue catalogue</li>
        </ul>
    </li>
  </ol>
</div>
