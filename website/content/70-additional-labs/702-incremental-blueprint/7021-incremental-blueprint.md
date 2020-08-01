+++
title = "Incremental Blueprints"
chapter = false
weight = 7021
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
    In this exercise, we will use incremental database as blueprint and will ingest incremental data from <b>TPC</b> database to your data lake.
    <ol>
        <li>Click on the <b>Blueprints</b> option from the left navigation panel and then click on <b>Use blueprint</b> button.<img src="/images/blueprint1.png" style="margin:15px 0px; border:1px solid black"/>
        </li>
        <li>Select <b>Incremental database</b> as the blueprint type.<img src="/images/incrementalblueprint1.PNG" style="margin:15px 0px; border:1px solid black"/>
        </li>
        <li>Under <b>Import source</b> section, for <b>Database connection</b> name, choose <b>TPCGlueConnector</b> which is created through CloudFormation to access the TPC database running on RDS.
        </li>
        <li>For the <b>Source data path</b>, enter <b>"tpc/customer"</b>. Leave <b>Exclude pattern</b> options as default.<img src="/images/incrementalblueprint2.PNG" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Under <b>Incremental data</b> section, for the <b> Table name </b> enter 
        <b> customer </b>, <b> Bookmark keys </b> enter <b> c_customer_sk </b>, <b> bookmark order </b>, choose <b> Ascending </b>.
        <img src="/images/incrementalblueprint3.PNG" style="margin:15px 0px; border:1px solid black"/>
        </li>
        <li>Under <b>Import target</b> section, choose <b>tpc</b> as the target database. For the <b>Target storage location</b>, choose the S3 path which you used in the <b>Data Lake Locations</b> section. For Data format, choose <b>Parquet</b> as the format in which the data is written.
        <img src="/images/blueprint4.png" style="margin:15px 0px; border:1px solid black"/>
        </li>
        <li>Now move to <b>Import options</b>, enter a workflow name <b>tpc-increment</b>. Choose <b>LF-GlueServiceRole</b> for the IAM role and enter "il" as the <b>Table prefix</b>. Leave the rest of the fields as default.
        <img src="/images/incrementalblueprint5.PNG" style="margin:15px 0px; border:1px solid black"/>
        </li>
        <li>Choose <b>Create</b>. Wait for the status of the blueprints to go from Creating to <b>Successfully created...</b> message.
        <img src="/images/incrementalblueprint6.PNG" style="margin:15px 0px; border:1px solid black"/>
        </li>
        <li>Now select the newly created workflow <b>tpc-increment</b> and start the workflow by selecting <b>Start</b> option from the <b>Actions</b> drop-down.
        <img src="/images/incrementalblueprint7.PNG" style="margin:15px 0px; border:1px solid black"/>
        </li>
        <li>It will take few minutes to ingest the TPC database to your data lake. During this phase, the <b>Last run status</b> column will reflect different phases of ingestion process. For this exercise, <i>Discovering</i> phase will take around ~4 minutes, <i>Importing</i> phase will take ~20 minutes.
        </li>
        <li>when the blueprint <b>tpc-increment</b> is completed successfully. Move to <b>Athena</b> console to query the data
        </li>
        <li>Query <b>tpc</b> database <b>customer</b> table from athena console and record the results. 
        <img src="/images/incrementalblueprint8.PNG" style="margin:15px 0px; border:1px solid black"/>
        </li>
        <li>Insert new records in RDS MySQL <b>tpc</b> database <b>customer</b> 
        table using the script.     
        {{< highlight sql >}}
        INSERT INTO tpc.customer (c_salutation,c_customer_sk,c_first_name,c_last_name) VALUES("Dr.",29999935,"Jill","Thomas");
        INSERT INTO tpc.customer (c_salutation,c_customer_sk,c_first_name,c_last_name) VALUES("Dr.",29999936,"Jill","Thomas");        {{< /highlight >}}
        </li>
        <li>Now move back to Lake Formation workflow console and start the workflow
        <b>tpc-increment</b> again by selecting <b>Start</b> option from the <b>Actions</b> 
        drop-down.
        <img src="/images/incrementalblueprint9.PNG" style="margin:15px 0px; border:1px solid black"/>
        </li>
        <li>Once workflow is successfully completed move back to <b>Athena</b> console, query the <b>tpc</b> database <b>customer</b> table. You will see new records got added into table.
        <img src="/images/incrementalblueprint10.PNG" style="margin:15px 0px; border:1px solid black"/>
        </li>
    </ol>
</div>