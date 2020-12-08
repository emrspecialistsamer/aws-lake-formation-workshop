+++
title = "Crawling JDBC"
chapter = true
weight = 4012
+++

<div style="text-align: left">
    Let's create a JDBC crawler using the connection you just created to extract the schema from the TPC database.
    <ol>
        <li>Click on the <b>Crawlers</b> option on the left and then click on the <b>Add crawler</b> button.<img src="/images/gluecrawler1.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Enter <b>tpc-crawler</b> as the <b>Crawler name</b> and click <b>Next</b>.<img src="/images/gluecrawler2.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select <b>Data stores</b> as the <b>Crawler source type</b>.<img src="/images/gluecrawler3.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>In this section you select the crawler type [S3, JDBC & DynamoDB]. Select <b>JDBC</b> as a data store, <b>mysql-connector</b> as the connection. You can crawl an entire schema/database or you can call any specific table or table with a prefix. For this exercise, we want to crawl just a single table. So, enter <b>tpc/income_band</b> in the <b>Include path</b> section. It will scan only the <b>income_band</b> table in the <b>tpc</b> schema.<img src="/images/gluecrawler4.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>You are going to crawl only one data store, so select <b>No</b> from the option and click <b>Next</b>.<img src="/images/gluecrawler5.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select IAM role <b>LF-GlueServiceRole</b> from the dropdown list and proceed next.<img src="/images/gluecrawler6.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>You can schedule a crawler in several ways but in this exercise, you run it on demand. Select <b>Run on demand</b> and move next.</li>
        <li>In this step, you decide where to store the crawler's output. We want to update the database created in this exercise. Select <b>glue-demo</b> from the database list and enter <b>jdbc_</b> as a prefix. Leave the rest of the options as default and move next.<img src="/images/gluecrawler7.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Verify all crawler information on the screen and click <b>Finish</b> to create the crawler.</li>
        <li>When the crawler is newly created, it will ask you if you want to run it now. Click on <b>Run it now</b> link. Alternatively, you can select the crawler and run the crawler from the <b>Action</b>.<img src="/images/gluecrawler8.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>It may take up to 2 minutes for the crawler to finish crawling <b>income_band</b> table. You should be able to see a success message with the table count that got discovered through the crawler.<img src="/images/gluecrawler9.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Now go back to <b>Databases -> Tables</b>, you should be able to see the table <b>jdbc_tpc_income_band</b>. Click on it.<img src="/images/gluecrawler10.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Clicking on the table, it will display table metadata, inferred schema and it's properties. If the table had partitions or multiple versions, it would display here. By looking at the table properties, you will discover the schema and know more about the source.<img src="/images/gluecrawler11.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Proceed to the next exercise, where you will run the crawler again but this time it will crawl a file on S3 location to discover it's the schema.</li>
    </ol>
</div>