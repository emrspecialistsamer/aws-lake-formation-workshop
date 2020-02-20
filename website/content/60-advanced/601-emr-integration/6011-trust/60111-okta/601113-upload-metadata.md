+++
title = "Upload Metadata To S3 "
weight = 601113
chapter = true
+++

<center><h3>Upload Okta Metadata Into S3 </h3></center>

<div style="text-align: justify">

   <br/>
   
   
      
   <ol>
      <li>Click on S3 bucket <b>lf-metadata-bucket-account-id</b>, where <b>account-id</b> is your AWS account in S3 Console.</li>
      <img src="/images/s3metadatabucket.png" title="S3 Metadata Bucket" style="margin:15px 0px; border:1px solid black"/>
      <li>Upload metadata xml file you downloaded from <b>Okta</b> for Lake-Formation Application into S3 bucket you selected above, and make a note of S3 path to this file 
      as we need this during AWS CloudFormation Stack creation as one of the input. </li>
      
      <img src="/images/s3metadataupload.png" title="S3 Metadata Upload" style="margin:15px 0px; border:1px solid black"/>
      
   </ol>
   
   
   
</div>