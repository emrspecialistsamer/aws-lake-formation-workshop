+++
title = "Create Amazon EMR Cluster"
chapter = true
weight = 6012
+++

<center><h3>Create Amazon EMR Cluster</h3></center>

<div style="text-align: justify">
    Now that we finished setting up Identity Provider Trust, it's time to create an Amazon EMR cluster integrating with AWS Lake Formation. Upon successful completion of the CloudFormation template below, it will create the following IAM resources:
   <ul>
       <li><a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-lf-iam-role.html">IAM Roles Needed for AWS Lake Formation Integration</a></li>
        <li>EMR Security Configuration</li>
        <li>Amazon EMR Cluster</li>
   </ul>
    Log out and log back into AWS console using TeamRole (if hashcode is given, use chapter <a href="/30-howtostart/302-aws-event.html"> AWS Event</a> to login) or as Administrator, which you used for the <a href="/30-howtostart/301-self-paced.html"> Self Paced Labs</a>.
    <a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=Lake-Formation-With-EMR-Workshop&templateURL=https://emr-workshops-us-west-2.s3-us-west-2.amazonaws.com/lakeformation-emr-workshop/cf-templates/lf-emr-workshop-js.template" target="_blank"><img src="/images/LaunchStack.svg" title="LF Workshop With EMR CFN" width="140" height="60" style="margin:10px 0px"/></a>
    <b>NOTE:</b> This template is created for the us-east-1 region (N. Virginia) and will not work in other regions.<br/>
    <h5>Executing the CloudFormation template</h5>
    Follow these steps to get to know more about this CloudFormation template and execute the template.
    <ul>
        <li>The CloudFormation template will take a few parameters as input. The first two parameters are very important - (1) Your SAML identity provider & (2) SAML identity provider metadata path.<img src="/images/emr-cfn-parameterinput.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>The CloudFormation stack will roughly take 10-12 minutes to complete. Check the CloudFormation console and wait for the status <b>CREATE_COMPLETE</b> as shown below:<img src="/images/emr-stack-creation.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Once the stack creation is completed, your AWS account will have all the required resources to run this exercise. Take a note of the EMR Master node DNS and Notebooks bucket name from the output tab.</li>
        <li>The CloudFormation template also shows the AWS console IAM login link. Use that link to switch between different users to run this exercise.<img src="/images/emr-stack-output.png" style="margin:15px 0px; border:1px solid black"/></li>
    </ul>
 </div>
 
