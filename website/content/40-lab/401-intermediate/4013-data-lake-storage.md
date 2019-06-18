+++
title = "Data Lake Storage"
chapter = true
weight = 4013
+++

<div style="text-align: left">
    <ol>
        <li>Now register an Amazon S3 bucket as your data lake storage. After ingestion phase, data will be stored inot this location.</li>
        <li>In the navigation pane, choose <b>Data lake storage</b>, and then choose <b>Add storage</b>.<img src="/images/lakestorage1.png" style="margin:15px 0px"/></li>
        <li>Enter a path to an existing S3 bucket (created through CloudFormation) to contain the data that you want available in your data lake.</li>
        <li>For the IAM role, choose <b>LF-GlueServiceRole</b> so that Lake Formation can write to the bucket.<img src="/images/lakestorage2.png" style="margin:15px 0px"/></li>
        <li>Verify your data lake storage selection.<img src="/images/lakestorage3.png" style="margin:15px 0px"/></li>
    </ol>
</div>