+++
title = "Kinesis Generator"
chapter = true
weight = 6031
+++

<center><h3>Kinesis Generator</h3></center>

<div style="text-align: justify">
   
 
 You will deploy an open-source serverless real-time data generator tool to simulate data in real-time and ingest into AWS Kinesis Firehose. We will simulate product catalogue data with random values.
    <ol>
        <li>Login as the <b><i>lf-admin</i></b> user (default password: Password1!).</li>
        <li>Create the CloudFormation stack by clicking the button below. It will take you to the AWS CloudFormation console in the <b><font size="3" color="red">Oregon Region</font></b> <b>(this region is going to be used just for this component of the lab)</b> and start the stack creation wizard. 
            <a href="https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=Kinesis-Data-Generator-Cognito-User&templateURL=https://aws-kdg-tools.s3.us-west-2.amazonaws.com/cognito-setup.json" target="_blank"><img src="../../images/LaunchStack.svg" title="KG Tool CFN" width="140" height="60" style="margin:10px 0px"/></a></li>
        <li>Accept the defaults and select <b>Next</b> 
            <img src="/images/kinegen1.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Provide the Username: <i>kinesisgen</i> and the Password: <i>kinesisgen1</i> for the user that you will use to log in to the KDG and select <b>Next</b> 
            <img src="/images/kingen2.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Accept the defaults and select <b>Next</b> 
            <img src="/images/kingen3.png" style="margin:15px 0px; border:1px solid black"/></li>  
        <li>Go to the bottom of the page and check the <b><i>I acknowledge that AWS CloudFormation might create IAM resources.</i></b> box and then select <b>Create stack</b> 
            <img src="/images/kingen4.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>The creation process is going to take 5 min, wait until you see the <b>Create Complete</b> Status  
            <img src="/images/kingen5.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>After the CloudFormation stack has been successfully created, you will need to use a special URL to access the KDG. CloudFormation creates this URL as part of the stack generation, and you can find it in the Outputs section of the CloudFormation stack.<br><br>
            To find the URL, choose the CloudFormation stack, and then choose the Outputs tab as shown below. Simply bookmark this URL in your browser for easy future access to the KDG.
            <img src="/images/kingen6.png" style="margin:15px 0px; border:1px solid black"/></li>    
         <li>Go to the URL and use the Username: <i>kinesisgen</i> and the Password: <i>kinesisgen1</i>.  
            <img src="/images/kingen7.png" style="margin:15px 0px; border:1px solid black"/></li> 
        <li>If you see the Kinesis Data Generator page, you have successfully created KDG, and are ready to ingest data to the AWS Kinesis Firehose. Please proceed to the next lab.  
            <img src="/images/kingen8.png" style="margin:15px 0px; border:1px solid black"/></li>           
    </ol>
 </div>
 
