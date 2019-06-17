+++
title = "Create an IAM User"
weight = 302
chapter = true
+++

<center><h4>Create an IAM User</h4></center>

<div style="text-align: justify">

Services in AWS, such as Lake Formation, require that you provide credentials when you access them, so that the service can determine whether you have permission to access its resources. The console requires your password. You can create access keys for your AWS account to access the command line interface or API. However, we don't recommend that you access AWS using the credentials for your AWS account; we recommend that you use AWS Identity and Access Management (IAM) instead. Create an IAM user, and then add the user to an IAM group with administrative permissions or grant this user administrative permissions. You can then access AWS using a special URL and the credentials for the IAM user.

<br/><br/>
If you signed up for AWS but have not created an IAM user for yourself, you can create one using the IAM console. If you aren't familiar with using the console, see Working with the AWS Management Console for an overview.

</div>
<div style="text-align: left">
<br/>
<b>To create an IAM user for yourself and add the user to an Administrators group</b>
<ol>
<li>Use your AWS account email address and password to sign in as the AWS account root user to the IAM console at <a href="https://console.aws.amazon.com/iam/">https://console.aws.amazon.com/iam/</a></li><br/>
<b>Note:</b>  We strongly recommend that you adhere to the best practice of using the <b>Administrator</b> IAM user below and securely lock away the root user credentials. Sign in as the root user only to perform a few <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tasks-that-require-root.html">account and service management tasks</a>.
<li>In the navigation pane of the console, choose <b>Users</b>, and then choose <b>Add user</b>.
<li>For <b>User name</b>, type <b>Administrator</b>.
<li>Select the check box next to <b>AWS Management Console</b> access, select <b>Custom password</b>, and then type the new user's password in the text box. You can optionally select <b>Require password reset</b> to force the user to create a new password the next time the user signs in.
<li>Choose <b>Next: Permissions</b>.
<li>On the <b>Set permissions</b> page, choose <b>Add user to group</b>.
<li>Choose <b>Create group</b>.
<li>In the <b>Create group</b> dialog box, for <b>Group name</b> type <b>Administrators</b>.
<li>For <b>Filter policies</b>, select the check box for <b>AWS managed - job function</b>.
<li>In the policy list, select the check box for <b>AdministratorAccess</b>. Then choose <b>Create group</b>.
<li>Back in the list of groups, select the check box for your new group. Choose <b>Refresh</b> if necessary to see the group in the list.
<li>Choose <b>Next: Tags</b> to add metadata to the user by attaching tags as key-value pairs.
<li>Choose <b>Next: Review</b> to see the list of group memberships to be added to the new user. When you
are ready to proceed, choose <b>Create user</b>.
</ol>

</div>

<div style="text-align: justify">
You can use this same process to create more groups and users, and to give your users access to your AWS account resources.
<br/><br/>
To sign in as this new IAM user, sign out of the AWS console, then use the following URL, where your_aws_account_id is your AWS account number without the hyphens (for example, if your AWS account number is 1234-5678-9012, your AWS account ID is 123456789012):

<br/><br/>
https://<b>your_aws_account_id</b>.signin.aws.amazon.com/console/
<br/><br/>

Enter the IAM user name (not your email address) and password that you just created. When you're signed in, the navigation bar displays "your_user_name @ your_aws_account_id".
<br/><br/>
If you don't want the URL for your sign-in page to contain your AWS account ID, you can create an account alias. From the IAM console, choose <b>Dashboard</b> in the navigation pane. From the dashboard, choose <b>Customize</b> and enter an alias such as your company name. To sign in after you create an account alias, use the following URL:

<br/><br/>
 https://<b>your_account_alias</b>.signin.aws.amazon.com/console/

<br/><br/>
To verify the sign-in link for IAM users for your account, open the IAM console and check under <b>IAM users sign-in link</b> on the dashboard.
</div>

