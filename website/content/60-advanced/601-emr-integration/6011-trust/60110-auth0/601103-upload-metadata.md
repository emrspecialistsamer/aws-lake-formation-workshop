+++
title = "Upload Metadata To S3 "
weight = 601103
chapter = true
+++

<center><h3>Upload Auth0 Metadata Into S3 </h3></center>

<div style="text-align: justify">


   
   <br/>
   
   <ol>
   <li>Click on S3 bucket <b>lf-metadata-bucket-account-id</b>, where <b>account-id</b> is your AWS account in S3 Console.</li>
   <img src="/images/s3metadatabucket.png" title="S3 Metadata Bucket" style="margin:15px 0px; border:1px solid black"/>
   <li>Upload metadata xml file you downloaded from <b>Auth0</b> for AWS SSO Application you created in the previous chapter into S3 bucket you selected above, and make a note of S3 path to this file 
   (by copying the address to this file in notepad or some text editor) as we need this during AWS CloudFormation Stack creation as one of the input. </li>
   
   <img src="/images/s3metadataupload.png" title="S3 Metadata Upload" style="margin:15px 0px; border:1px solid black"/>
   
   <li>You can now go to <b> <a href="/60-advanced/601-emr-integration/6012-cloudformation.html"> Create Amazon EMR Cluster</a></b> chapter and skip next chapter of setting up Okta.</li>
   
   </ol>
   
</div>