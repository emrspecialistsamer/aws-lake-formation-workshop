+++
title = "Prerequisites"
chapter = true
weight = 30
+++


<center><h4>Getting started with AWS Lake Formation</h4></center>

<div style="text-align: justify">

    Before starting this AWS Lake Formation tutorial, you need to create the required AWS resources.In this exercise,
    you configure the required AWS resources using AWS CloudFormation, and then you create the data lake in Lake
    Formation.
    <br><br/>
    If you've already signed up for Amazon Web Services (AWS), you can start using Lake Formation immediately. You can
    use this Lake Formation tutorial to complete the steps to create a data lake.
    <br><br/>
    If you haven't signed up for AWS yet, or if you need assistance, complete the following tasks to get set up to use
    Lake Formation:

    <ul>
        <li><a href="30-prerequisite/301-sign-up-aws.html">Sign Up for AWS</a></li>
        <li><a href="30-prerequisite/302-create-iam-account.html">Create an IAM User</a></li>
    </ul>
</div>
<div>
    If you already have an AWS account, please skip the above two steps and go directly to this chapter:
    <ul>
        <li><a href="30-prerequisite/303-ec2-keypair.html">Create EC2 Key Pair</a></li>
    </ul>
</div>


<div>
    If you are planning on Integrating AWS Lake Formation with Amazon EMR and enable SAML based authentication for EMR Notebooks or Apache Zeppelin authentication part of this workshop then please finish the following steps for Auth0.
    
    <br/>
    <h4> Auth0 </h4>
    <ul>
        <li><a href="30-prerequisite/305-saml-providers/3051-auth0/30511-configure-auth0.html">Configure Auth0</a></li>
        <li><a href="30-prerequisite/305-saml-providers/3051-auth0/30512-create-saml-provider-in-aws.html">Create AuthO SAML Provider in AWS</a></li>
        <li><a href="30-prerequisite/305-saml-providers/3051-auth0/30513-upload-metadata.html">Upload AuthO Metadata into S3</a></li>
    </ul>
    
    
</div>

<div>
    Finally create cluster using following chapter:
    <ul>
        <li><a href="30-prerequisite/304-cloudformation.html">Using CFN Template</a></li>
    </ul>
</div>