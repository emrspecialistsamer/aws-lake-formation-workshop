+++
title = "Clean up"
weight = 90
chapter = true
+++
<center><h2>Cleaning Up</h2></center>

<div style="text-align: justify">
    Please make sure you empty all the Amazon S3 buckets that got created as part of this exercise. Once you empty those buckets, proceed to AWS console or AWS CLI to delete the following CloudFormation stacks:
    <ul>
        <li>Lake-Formation-Workshop</li>
        <li>Lake-Formation-With-EMR-Workshop & Lake-Formation-EMR-WindowsADFS (if you completed Advanced labs)</li>
        <li>Kinesis-Data-Generator-Cognito-User <font size="3" color="red">us-west-2 (Oregon Region) </b></font></li>
    </ul>
    Click here to know more about how to <a href="https://docs.aws.amazon.com/AmazonS3/latest/user-guide/delete-bucket.html">delete the Amazon S3 bucket</a>.
</div>