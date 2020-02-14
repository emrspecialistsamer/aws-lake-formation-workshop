+++
title = "CloudFormation Template"
weight = 308
chapter = true
+++

<center><h4>Using CloudFormation Template</h4></center>

<div style="text-align: justify">
    Before starting this AWS Lake Formation workshop, you need to create the required AWS resources. To do this, we
    provide AWS CloudFormation template to create a stack that contains the resources. When you create the stack, AWS
    creates a number of resources in your account. The outcome of these steps is to create the sample TPC database
    running on Amazon RDS, sample users to test different security patterns, Glue connections, Amazon EMR Cluster and  other IAM resources. <br />

    All of these resources are required for this workshop to build a secured data lake on AWS.<br/><br/>
    To launch the CloudFormation stack, click on Launch Stack. <br /> <br />
 
     <br/>
     <b>NOTE:</b> This template is created for us-east-1 region (N.Virginia) and will not work in other regions.<br />
     
     <br/><br/><b style="color:red !important;">NOTE:</b> If you are integrating AWS Lake Formation with Amazon EMR then you need to provide the SAML metadata file path while creating the stack, so please make a note of your S3 metadata file path and  also for the parameter  <b> Integrate With EMR </b> select  <b>Yes</b> during stack creation.
     <br/>
     <br/>
     <a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=Lake-Formation-WF&templateURL=https://emr-workshops-us-west-2.s3-us-west-2.amazonaws.com/lakeformation-emr-workshop/cf-templates/lf-emr-workshop.json" target="_blank"><img src="/images/LaunchStack.svg" title="LF Workshop With EMR CFN" width="140" height="60" style="margin:10px 0px"/></a>

    The CloudFormation stack will roughly take 12-14 minutes to complete. Check the CloudFormation console and wait for
    the status <b>CREATE_COMPLETE</b> as shown below:<img src="/images/cfn-complete.png" title="LF Workshop CFN" style="margin:15px 0px; border:1px solid black"/>
    Once the stack creation is completed, your AWS account will have all required resources to run exercises. Capture the data lake bucket name, password, and Athena query result output location from the output tab and proceed to the next chapter to run exercise.<img src="/images/cfn-complete-2.png" style="margin:15px 0px; border:1px solid black"/>
    The CloudFormation template also shows AWS console IAM login link. Use this link to login to different users for this workshop..<img src="/images/cfn-complete-3.png" style="margin:15px 0px; border:1px solid black"/>
</div>
