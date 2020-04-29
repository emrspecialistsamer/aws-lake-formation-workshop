+++
title = "Lab Preparation"
chapter = true
weight = 7012
+++

<div style="text-align: left">
   
  <ol>
<li>Run the Cfn template as <strong>lf-admin</strong>, <strong>Password</strong>= Password1!</li>
 <a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=Lake-Formation-With-EMR-Workshop&templateURL=https://aws-data-analytics-workshops.s3.amazonaws.com/lake-formation-workshop/cfn/lf-emr-workshop.template" target="_blank"><img src="/images/LaunchStack.svg" title="LF Workshop With EMR CFN" width="140" height="60" style="margin:10px 0px"/></a>
    <b>NOTE:</b> This template is created for the us-east-1 region (N. Virginia) and will not work in other regions.<br/>
    Leave everything as default, except the 2 variables shown below
</ol>
<p></p>

<p>
<img src="/images/gluemigration001.png" style="margin:15px 0px; border:1px solid black"  vertical-align:middle, width="800" height="600"/>


</p>
<ol start="2">
<li>Cfn template will create the following resources
<ul>
<li>2 IAM users: glueuser1 and glueuser2. <strong>Password</strong>= Password1!</li>
<li>1 Role: AWSGlueServiceRole-gluedemo</li>
<li>Cloud9 service to use CLI commands</li>
<li>IAM Policies: AthenaAccessPolicy, LakeFormationDataAccess, GlueFullReadAccess, GlueProdPolicy, GlueTestPolicy, GlueCrawlerPolicy</li>
<li>1 S3 bucket</li>
<li>S3 bucket policies</li>
<li>2 Athena Named Query: 1 for Prod and 1 for Test</li>
<li>2 Glue Databases: 1 for Prod and 1 for Test</li>
</ul>
</li>
</ol>

<ol start="3">
<li>Open Cloud9 IDE and configure the bucket name before running the following commands. These commands will copy public data for amazon reviews.</li>

<p style="font-size:15px">YOUR_BUCKET="lf-data-lake-bucket-glue-lf-migration--[AccountID]"</p>

<p style="font-size:15px">aws s3 cp S3://amazon-reviews-pds/parquet/product_category=Watches/  s3://$YOUR_BUCKET/amazonprod/amazon-reviews-prod/ --recursive</p>

<p style="font-size:15px">aws s3 cp s3://amazon-reviews-pds/parquet/product_category=Watches/ s3://$YOUR_BUCKET/amazontest/amazon-reviews-test/ --recursive</p>
</ol>
<ol start="4">
<li>Run the crawler job to add tables to <strong>amazonprod</strong> and <strong>amazontest</strong> databases
<img src="/images/gluemigration002.png" style="margin:15px 0px; border:1px solid black" width="1000" height="400"/>
<img src="/images/gluemigration003.png" style="margin:15px 0px; border:1px solid black" width="700" height="400"/>
<img src="/images/gluemigration004.png" style="margin:15px 0px;border:1px solid black"  width="700" height="400"/>
<img src="/images/gluemigration005.png" style="margin:15px 0px; border:1px solid black" width="700" height="400"/>
<img src="/images/gluemigration006.png" style="margin:15px 0px; border:1px solid black" width="700" height="400"/>
<img src="/images/gluemigration007.png" style="margin:15px 0px; border:1px solid black"/>
<img src="/images/gluemigration008.png" style="margin:15px 0px; border:1px solid black"width="700" height="400"/>

</li>
</ol>

<ol start="5">
<li>Hit Finish</li>


</ol>

<ol start="6">
<li>Run the Crawler</li>
<img src="/images/gluemigration010.png" style="margin:15px 0px; border:1px solid black" />
</ol>

<ol start="7">
<li>Check the Table created</li>
<img src="/images/gluemigration011.png" style="margin:15px 0px; border:1px solid black"/>
</ol>

<ol start="8">
<li>Repeat the process to add table to Test DB by using <strong>amazontest</strong> S3 bucket as source</li>
<img src="/images/gluemigration012.png" style="margin:15px 0px; border:1px solid black"/>
</ol>
<p>&nbsp;</p>
</div>
