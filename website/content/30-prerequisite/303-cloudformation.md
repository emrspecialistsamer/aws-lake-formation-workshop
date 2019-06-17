+++
title = "Using CFN Template"
weight = 303
chapter = true
+++

<center><h4>Using CFN Template</h4></center>

<div style="text-align: justify">

Before starting this AWS Lake Formation workshop, you need to create the required AWS resources. To do this, we provide  AWS CloudFormation template to create a stack that contains the resources. When you create the stack, AWS creates a number of resources in your account. The outcome of these steps is to create the sample TPC database running on Amazon RDS, sample users to test different security patterns, Glue connections and other IAM resources. All of these resources are required for this workshop to build a secured data lake on AWS. 

</br></br>
To launch the CloudFormation stack, click on Launch Stack. Please note, this template is created for US-East-1 region and will not work in other regions.

<a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=Lake-Formation-WF&templateURL=https://aws-data-analytics-blog.s3.amazonaws.com/lake-formation-workshop/cfn/lf-workshop.template" target="_blank">
  <img align="left" src="/images/LaunchStack.png" alt="LF Workshop CFN">
</a>


</div>