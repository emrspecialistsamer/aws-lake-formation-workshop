+++
title = "Create Data Stream"
chapter = true
weight = 6032
+++

<center><h3>Create Data Stream</h3></center>

<div style="text-align: justify">
   
 
  In this lab, you will create a Firehose delivery stream from the AWS Management Console, configure it with a few clicks to store incoming stream data into S3, and start sending data to the stream Kinesis Data Generator (created in the previous Lab) as data source. <br><br>
    Amazon Kinesis Firehose is a serverless service used to reliably load streaming data into data stores and analytics tools. It can capture, transform, and load streaming data into Amazon S3, Amazon Redshift, Amazon Elasticsearch Service, and 3rd Party services (e.g. Splunk), enabling near real-time analytics. 

    <ol>
        <li>Login as the <b><i>lf-admin</i></b> user and select the <b><font size="3" color="red">N. Virginia Region.</font></b><br><br></li>
        <li>In the AWS Management Console go to <b>Find Services</b> and look for the <b>Kinesis</b> service.
            <img src="/images/firehose1.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>In the Kinesis home page Select <b>Get Started</b> 
            <img src="/images/firehose18.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Click on <b>Create Delivery Stream</b> Button in the  <b>Kinesis Firehose</b> Section
            <img src="/images/firehose19.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Add a new delivery stream and configure as follows:
            <ul>
            	<li>Delivery stream name: <b><i>lf-kinesis-fh</i></b></li>
            	<li>Source: <b><i>Direct PUT or other sources</i></b></li>
            </ul> <br<br>
            and then select <b>Next</b>
            <img src="/images/firehose4.png" style="margin:15px 0px; border:1px solid black"/></li>  
        <li> Select the <b>Disabled</b> option for <b><i>Record transformation</b></i> and <b><i>Record format conversion</b></i> and then select <b>Next</b> 
            <img src="/images/firehose5.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>In destination Select the <b>Amazon S3</b>  
            <img src="/images/firehose6.png" style="margin:15px 0px; border:1px solid black"/></li>
        
        <li>Configure the destination as follows::
            <ul>
            	<li>S3 bucket: Select the name of the bucket created by CloudFormation <b><i>lf -data-lake-bucket-youraccountid</i></b></li>
            	<li>S3 prefix: <b><i>sales-event/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/</i></b></li>
            	<li>S3 error prefix: <b><i>sales-event-errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/!{firehose:error-output-type}</b></i></li>
            </ul><br>
            And then select <b>Next</b>
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
            </ul><br>
            And then select <b>Next</b> 
            <img src="/images/firehose9.png" style="margin:15px 0px; border:1px solid black"/></li>  
        
        <li>For Error Login Select <b>Disabled</b> 
            <img src="/images/firehose10.png" style="margin:15px 0px; border:1px solid black"/></li>   
             
         <li>For Permissions select the  <b><i>Create new or choose</i></b> button.  
            <img src="/images/firehose11.png" style="margin:15px 0px; border:1px solid black"/></li> 
         
         <li>Configure the Role Summary section as follows:
            <ul>
            	<li>IMA Role: <b><i>LF-GlueServiceRole</i></b></li>
            	<li>Policy Name : <b><i>LF-Data-Lake-Storage-Policy</i></b></li>
            </ul><br>
            And then select <b>Allow</b>  
            <img src="/images/firehose12.png" style="margin:15px 0px; border:1px solid black"/></li>     
            
        <li> Select <b>Next</b>  
            <img src="/images/firehose13.png" style="margin:15px 0px; border:1px solid black"/></li>
            
        <li> Select <b>Create delivery stream</b>  
            <img src="/images/firehose14.png" style="margin:15px 0px; border:1px solid black"/></li>
            
       <li> Wait until you see the <i><b>Successfully created delivery stream lf-kinesis-fh</b></i> message 
            <img src="/images/firehose15.png" style="margin:15px 0px; border:1px solid black"/></li>  
            
       <li> Go to the next part of the lab</li>
            
                                     
                           
    </ol>
 </div>
 
