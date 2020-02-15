+++
title = "Configure AWS IAM Roles"
chapter = true
weight = 6010
+++

<center><h3>Configure AWS IAM Roles</h3></center>

<div style="text-align: justify">
    The integration between Amazon EMR and AWS Lake Formation relies on three key roles: the IAM role for Lake Formation, the IAM role for AWS services, and the EC2 instance profile for Amazon EMR. The following three IAM requirements are required irrespective of what IdP you pick.
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
    Upon successful completion of the CloudFormaiton template, it will create the following IAM resources:
    <ul>
        <li>Srikanth to update here </li>
    </ul>
    You do not need to create additional roles for this exercise. Take a note of these roles as you will use them in the next chapter.
</div>