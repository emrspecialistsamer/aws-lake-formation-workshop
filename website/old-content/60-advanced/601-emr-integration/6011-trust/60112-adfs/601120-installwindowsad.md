+++
title = "Setup Windows AD"
chapter = false
weight = 601120
autoNav = true
+++

<div style="text-align: justify">
    Following CloudFormation template will install Windows 2019 server along with Active Directory, Domain Name Service with  <b>hadoop.com</b> root domain and setups AD FS for AWS Lake Formation.
    <br/><br/>

    Logout and login back into AWS console using TeamRole ( If hashcode has given, use chapter <a href="/30-howtostart/302-aws-event.html" > AWS Event </a> to login) or as Administrator you created in <a href="/30-howtostart/301-self-paced.html" > Self Paced Labs </a>
    <br/>
    <a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=Lake-Formation-EMR-WindowsADFS&templateURL=https://aws-data-analytics-workshops.s3.amazonaws.com/lake-formation-workshop/cfn/windows-ad.template" target="_blank"><img src="/images/LaunchStack.svg" title="Windows Server" width="140" height="60" style="margin:10px 0px"/></a>

    {{% notice info %}}This template is created for us-east-1 region (N.Virginia) and will not work in other regions.
    {{% /notice %}}
       
    <img src="/images/emr-windows-cfn-parameterinput.png" title="LF Workshop Windows CFN" style="margin:15px 0px; border:1px solid black" width="100%"/>
    The CloudFormation stack will take less than 5 minutes to complete. Check the CloudFormation console and wait for
    the status <b>CREATE_COMPLETE</b>.
    <br/>
    Once the stack creation is completed, your AWS account will have all the required resources to run this workshop. Capture the Public IP of the Windows Domain Controller  from the output tab and proceed to the next chapter.
    <img src="/images/windows-cfn-output.png" style="margin:15px 0px; border:1px solid black" width="100%"/>

</div>
