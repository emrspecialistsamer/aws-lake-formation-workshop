+++
title = "Create Amazon EMR Cluster"
chapter = true
weight = 6012
+++

<center><h3>Create Amazon EMR Cluster</h3></center>

<div style="text-align: justify">
    Before creating  Amazon EMR cluster integrating with AWS Lake Formation, let's understand the three key roles that it requires: the IAM role for Lake Formation, the IAM role for AWS services, and the EC2 instance profile for Amazon EMR. The following three IAM requirements are required irrespective of what IdP you pick.
<br/><br/>
    <h5 style="color:orange !important;">IAM Role for Lake Formation</h5>
    The IAM Role for Lake Formation defines what privileges a user logging in through your IdP will have and which Identity Provider can assume this role.
    <br/><br/>
    <h5 style="color:orange !important;">IAM Role for AWS Services</h5>
    The IAM Role for AWS Services defines the permissions that the Amazon EMR cluster has when accessing non- AWS Lake Formation services.
    <br/><br/>
    <h5 style="color:orange !important;">EC2 Instance Profile</h5>
    The EC2 instance profile is a special type of service role that defines permissions for EMR clusters to interact with Lake Formation and other AWS services.
</div>
<div><br/>
    To know more about the requirement of these IAM roles, please check <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-lf-iam-role.html">Overview of the IAM Roles for Lake Formation</a>
</div>
<br/>
<div style="text-align: justify">
    Upon successful completion of the following CloudFormaiton template, it will create the following IAM resources:
    <ul>
        <li>Roles Described Above</li>
        <li>Amazon EMR Cluster</li>
        
   </ul>
   
   <br/>
        <b>NOTE:</b> This template is created for us-east-1 region (N.Virginia) and will not work in other regions. <br />
        <br/>
      
        <br/><br/><b style="color:red !important;">NOTE:</b> Please make a note of Identity Provider metadata file path in S3 which you have uploded part of Configure Trust Relationship exersie, we need it during stack creation as one of the input.
        <br/>
        <br/>
        <a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=Lake-Formation-With-EMR-WF&templateURL=https://emr-workshops-us-west-2.s3-us-west-2.amazonaws.com/lakeformation-emr-workshop/cf-templates/lf-emr-workshop-js.template" target="_blank"><img src="/images/LaunchStack.svg" title="LF Workshop With EMR CFN" width="140" height="60" style="margin:10px 0px"/></a>
   
       The CloudFormation stack will roughly take 10-12 minutes to complete. Check the CloudFormation console and wait for
       the status <b>CREATE_COMPLETE</b> as shown below:<img src="/images/emr-stack-creation.png" title="LF Workshop CFN" style="margin:15px 0px; border:1px solid black"/>
       Once the stack creation is completed, your AWS account will have all required resources to run this workshop. Capture the master node dns, Notebooks bucket name from the output tab and proceed to the next chapter to run different lab.
       The CloudFormation template also shows AWS console IAM login link. Use this link to login to different users for this workshop..<img src="/images/emr-stack-output.png" style="margin:15px 0px; border:1px solid black"/>

 </div>
 
