+++
title = "Data Lake Locations"
chapter = true
weight = 503
+++

<div style="text-align: left">
    <ol>
        <li>Now register an Amazon S3 bucket as your data lake storage. After ingestion phase, data will be stored into this location.</li>
        <li>In the navigation pane, choose <b>Data lake locations</b>, and then choose <b>Register location</b>.<img src="/images/lakestorage1.png" style="margin:15px 0px; border:1px solid black" /></li>
        <li>Enter a path to an existing S3 bucket (created through CloudFormation) to contain the data that you want available in your data lake.</li>
        <li>For the IAM role, select the <b>LF-GlueServiceRole</b> role that is created by the CloudFormation template. Click <b>Register location</b> to save it.<img src="/images/lakestorage2.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Verify your data lake location selection.<img src="/images/lakestorage3.png" style="margin:15px 0px; border:1px solid black"/></li>
    </ol>
</div>