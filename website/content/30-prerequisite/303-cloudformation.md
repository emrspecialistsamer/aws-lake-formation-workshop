+++
title = "CloudFormation Template"
weight = 303
chapter = true
+++

<center><h3>Using CloudFormation Template</h3></center>

<div style="text-align: justify">
    Before starting this AWS Lake Formation workshop, you need to create the required AWS resources. To do this, we
    provide AWS CloudFormation template to create a stack that contains the resources. When you create the stack, AWS
    creates a number of resources in your account. The outcome of these steps is to create the sample TPC database
    running on Amazon RDS, sample users to test different security patterns, Glue connections and other IAM resources. <br />

    All of these resources are required for this workshop to build a secured data lake on AWS.<br/><br/>
    To launch the CloudFormation stack, click on Launch Stack. <br /> <br />

    <b>NOTE:</b> This template is created for us-east-1 region (N.Virginia) and will not work in other regions.<br />

    <a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=Lake-Formation-WF&templateURL=https://aws-data-analytics-blog.s3.amazonaws.com/lake-formation-workshop/cfn/lf-workshop.template" target="_blank"><img src="/images/LaunchStack.svg" title="LF Workshop CFN" width="140" height="60" style="margin:10px 0px"/></a>

    The CloudFormation stack will roughly take 12-14 minutes to complete. Check the CloudFormation console and wait for
    the status <b>CREATE_COMPLETE</b> as shown below:<img src="/images/cfn-complete.png" title="LF Workshop CFN"/>

    Once the stack creation is completed, your AWS account will have all required resources to run exercises. Please proceed to the next chapter to run exercise.

</div>
