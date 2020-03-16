+++
title = "Upload Metadata To S3 "
weight = 601103
chapter = true
+++

<center><h3>Upload Auth0 Metadata into Amazon S3</h3></center>

<div style="text-align: justify">
   <ol>
      <li>In this part, you will upload the Auth0 metadata into your S3 location. Grab the Metadata location from the CloudFormation output and open it on Amazon S3 console. Create a folder named <b>metadata</b> using the <b>Create folder</b> button.<img src="/images/s3metadata1.png" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Locate the metadata XML file that you downloaded in the previous step and upload it under the <b>metadata</b> folder.<img src="/images/s3metadata2.png" style="margin:15px 0px; border:1px solid black"/>
      <b>Note</b>: Make sure the file name does not have any special characters or spaces, etc. Amazon EMR cluster creation will fail with bootstrap errors if the file name has any spaces or special characters.</li>
   </ol>
   You can go to the <a href="/60-advanced/601-emr-integration/6012-cloudformation.html"><b>Create Amazon EMR Cluster</b></a> chapter to start the EMR & Lake Formation integration process. If you want to set up Okta, proceed to the next lab.
</div>