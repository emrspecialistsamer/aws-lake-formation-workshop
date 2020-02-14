+++
title = "Create EC2 Key Pair"
weight = 303
chapter = true
+++

<center><h4>Creating a Key Pair Using Amazon EC2</h4></center>

<div style="text-align: justify">
    The CloudFormation template will require you to provide an Amazon EC2 key pair. if you already have an EC2 key pair, proceed to the next chapter.<br />
</div>

<div style="text-align: left">
    <br/>
    <b>To create your key pair using the Amazon EC2 console</b>
    <ol>
        <li>Open the Amazon EC2 console at <a href="https://console.aws.amazon.com/ec2/">https://console.aws.amazon.com/ec2/</a>
        </li>
        <li>In the navigation pane, under <b>NETWORK & SECURITY</b>, choose <b>Key Pairs</b>.
        <li>Choose <b>Create Key Pair</b>.</li>
        <li>For <b>Key pair name</b>, enter a name for the new key pair, and then choose <b>Create</b>.</li>
        <li>The private key file is automatically downloaded by your browser. The base file name is the name you specified as the name of your key pair, and the file name extension is .pem. Save the private key file, this file will be required in the next chapter.</li>
    </ol>

</div>