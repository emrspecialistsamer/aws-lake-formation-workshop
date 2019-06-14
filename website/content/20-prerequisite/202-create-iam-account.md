+++
title = "Create an IAM User"
weight = 202
chapter = true
+++

<center><h4>Create an IAM User</h4></center>

<div style="text-align: justify">

Services in AWS, such as Lake Formation, require that you provide credentials when you access them, so that the service can determine whether you have permission to access its resources. To speed up the process, this workshop provides a CloudFormation template which will create all required users and IAM policies  to successfully run all the exercises.

</br></br>
To launch the CloudFormation stack, choose Launch Stack:
<a href="https://aws.amazon.com/blogs/big-data/launch-an-edge-node-for-amazon-emr-to-run-rstudio/">
  <img src="/images/LaunchStack.png" alt="CloudFormation Stack">
</a>

<b>Important:</b> This template is created for US-East-1 region and may not work in other regions.
</div>
