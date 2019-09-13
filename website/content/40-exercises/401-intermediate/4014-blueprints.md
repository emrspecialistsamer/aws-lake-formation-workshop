+++
title = "Blueprints"
chapter = true
weight = 4014
+++

<div style="text-align: justify">
    Blueprints enable data ingestion from common sources using automated workflows. At high level, Lake Formation
    provides two type of blueprints:
    <ul>
        <li><b>Database blueprints</b>: This blueprints help ingest data from MySQL, PostgreSQL, Oracle, and SQL server databases to your data lake. You can ingest either as bulk load snapshot, or incrementally load new data over time.
        </li>
        <li><b>Log file blueprints</b>: Ingest data from popular log file formats from AWS CloudTrail, Elastic Load Balancer, and Application Load Balancer logs.
        </li>
    </ul>
</div>
<div style="text-align: left">
    In this exercise, we will use database snapshot as blueprint and will ingest entire <b>TPC</b> database to your data lake.
    <ol>
        <li>Click on the <b>Blueprints</b> option from the left navigation panel and then click on <b>Use blueprint</b> button.<img src="/images/blueprint1.png" style="margin:15px 0px; border:1px solid black"/>
        </li>
        <li>Select <b>Database snapshot</b> as the blueprint type.<img src="/images/blueprint2.png" style="margin:15px 0px; border:1px solid black"/>
        </li>
        <li>For the AWS Glue <b>Database connection</b> name, choose <b>TPCGlueConnector</b> which is created through CloudFormation to access the TPC database running on RDS.
        </li>
        <li>For the <b>Source data path</b>, enter <b>"tpc/"</b>. Leave <b>Exclude pattern</b> options as default.<img src="/images/blueprint3.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Under <b>Import target</b> section, choose <b>tpc</b> as the target database. For the <b>Data lake location</b>, choose the S3 path which you used in the <b>Data lake storage</b> section. For Data format, choose <b>Parquet</b> as the format in which the data is written.<img src="/images/blueprint4.png" style="margin:15px 0px; border:1px solid black"/>
        </li>
        <li>Now move to <b>Import options</b>, enter a workflow name <b>tpc-ingest</b>. Choose <b>LF-GlueServiceRole</b> for the IAM role and enter "dt" as the <b>Table prefix</b>. Leave the rest of the fields as default.<img src="/images/blueprint5.png" style="margin:15px 0px; border:1px solid black"/>
        </li>
        <li>Choose <b>Create</b>. Wait for the status of the blueprints to go from Creating to <b>Successfully created...</b> message.<img src="/images/blueprint6.png" style="margin:15px 0px; border:1px solid black"/>
        </li>
        <li>Now select the newly created workflow <b>tpc-ingest</b> and start the workflow by selecting <b>Start</b> option from the <b>Actions</b> drop-down.<img src="/images/blueprint7.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>It will take few minutes to ingest the TPC database to your data lake. During this phase, the <b>Last run status</b> column will reflect different phases of ingestion process. For this exercise, <i>Discovering</i> phase will take around ~4 minutes, <i>Importing</i> phase will take ~20 minutes.
        </li>
        <li>Move to the next chapter when the blueprint <b>tpc-ingest</b> is completed successfully.<img src="/images/blueprint8.png" style="margin:15px 0px; border:1px solid black"/></li>
    </ol>
</div>