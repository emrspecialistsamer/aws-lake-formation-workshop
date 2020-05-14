+++
title = "Create a Data Stream"
chapter = true
weight = 6032
+++

<center><h3>Create a Data Stream</h3></center>

<div style="text-align: justify">
    In this section, you will create a Firehose delivery stream from the AWS Management Console, configure it with a few clicks to store incoming stream data into S3, and start sending data to the stream Kinesis Data Generator (created in the previous section) as the data source.<br><br>
    Amazon Kinesis Data Firehose is a serverless service used to reliably load streaming data into data stores and analytics tools. It can capture, transform, and load streaming data into Amazon S3, Amazon Redshift, Amazon Elasticsearch Service, and 3rd Party services (e.g. Splunk), enabling near real-time analytics.

    <ol>
        <li>Login as the <b><i>lf-admin</i></b> user and select the <b><font size="3" color="red">N. Virginia Region.</font></b></li>
        <li>In the AWS Management Console go to <b>Find Services</b> and look for the <b>Kinesis</b> service.
            <img src="/images/firehose1.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>In the Kinesis home page, under the <b>Get Started</b> section, select the <b>Kinesis Data Firehose</b> option and then select <b>Create delivery stream</b>.
            <img src="/images/firehose18.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Add a new delivery stream and configure as follows:
            <ul>
            	<li>Delivery stream name: <b><i>lf-kinesis-fh</i></b></li>
            	<li>Source: <b><i>Direct PUT or other sources</i></b></li>
            </ul>
            and then select <b>Next</b>.
            <img src="/images/firehose4.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select the <b>Disabled</b> option for <b><i>Data transformation</i></b> and <b><i>Record format conversion</i></b> and then select <b>Next</b>.
            <img src="/images/firehose5.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>In destination, select the <b>Amazon S3</b>.
            <img src="/images/firehose6.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Configure the destination as follows:
            <ul style="text-align: left">
            	<li>S3 bucket: Select the name of the bucket created by CloudFormation <b><i>lf -data-lake-bucket-youraccountid</i></b></li>
            	<li>S3 prefix: <b><i>dl_tpc_sales_event/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/</i></b></li>
            	<li>S3 error prefix: <b><i>dl_tpc_sales_event_errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/!{firehose:error-output-type}</i></b></li>
            </ul>
            and then select <b>Next</b>.
            <img src="/images/firehose7.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Configure the S3 buffer condition as follows:
            <ul>
            	<li>Buffer size: <b><i>1</i></b></li>
            	<li>Buffer interval: <b><i>60</i></b></li>
            </ul> 
            <img src="/images/firehose8.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Configure the S3 Compression and encryption condition as follows:
            <ul>
            	<li>S3 compression:  <b><i>Disabled</i></b></li>
            	<li>S3 encryption: <b><i>Disabled</i></b></li>
            </ul>
            and then select <b>Next</b>.
            <img src="/images/firehose9.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>For <b>Error Logging</b>, select <b>Disabled</b>.
            <img src="/images/firehose10.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>For Permissions select the  <b><i>Create new or choose</i></b> button.
            <img src="/images/firehose11.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Configure the Role Summary section as follows:
            <ul>
            	<li>IAM Role: <b><i>LF-KinesisServiceRole</i></b></li>
            	<li>Policy Name : <b><i>LF-Stream-Data-Storage-Policy</i></b></li>
            </ul>
            and then select <b>Allow</b>.
            <img src="/images/firehose12.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select <b>Next</b>.
            <img src="/images/firehose13.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select <b>Create delivery stream</b>.
            <img src="/images/firehose14.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Wait until you see the <i><b>Successfully created delivery stream lf-kinesis-fh</b></i> message.
            <img src="/images/firehose15.png" style="margin:15px 0px; border:1px solid black"/></li>  
        </ol>    
       In the next step, you are going to generate real-time data for this delivery stream.
 </div>
 
