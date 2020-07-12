+++
title = "Clean up"
weight = 90
chapter = true
+++
<center><h2>Cleaning Up</h2></center>

<div style="text-align: justify">
    Please make sure you empty all the Amazon S3 buckets that got created as part of this exercise. Additionally, If you have completed Glue to LakeFormation Migration workshop, then you also need to remove the <strong> policies</strong> that were attached to the two users (glue-admin and glue-dev-user). Once you complete these steps, proceed to AWS console or AWS CLI to delete the following CloudFormation stacks:
    <ul>
        <li>Lake-Formation-Workshop</li>
        <li>Lake-Formation-With-EMR-Workshop & Lake-Formation-EMR-WindowsADFS (if you completed "Integration with EMR" lab).</li>
        <li>Kinesis-Data-Generator-Cognito-User in <font size="3" color="red">us-west-2</b></font> region (if you completed "Handling Real-Time Data" lab).</li>
        <li>Lake-Formation-Migration (if you completed Glue to Lake Formation Migration).</li>
    </ul>
    For more details:
    <ul>
        <li>Click here to know more about how to <a href="https://docs.aws.amazon.com/AmazonS3/latest/user-guide/delete-bucket.html">Delete the Amazon S3 bucket</a>.</li>
        <li>Click here to know more about how to <a href="https://docs.amazonaws.cn/en_us/IAM/latest/UserGuide/id_users_change-permissions.html#users_change_permissions-remove-policy-console">Removing a Permissions Policy from a User</a>.</li>
    </ul>
</div>