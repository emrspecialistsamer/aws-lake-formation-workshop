+++
title = "Crawling S3"
chapter = true
weight = 40013
+++

<div style="text-align: left">
    In this exercise, you will create one more crawler but this time, the crawler will discover schema from a file stored in S3.
    <ol>
        <li>Click on the <b>Crawlers</b> option on the left and then click on <b>Add crawler</b> button.<img src="/images/gluecrawler1.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Enter <b>nyctaxi-crawler</b> as the <b>Crawler name</b> and click <b>Next</b>.<img src="/images/gluecrawler12.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select <b>Data stores</b> as the <b>Crawler source type</b>.<img src="/images/gluecrawler3.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select <b>S3</b> as a data store and provide the input path which contains <b>tripdata.csv</b> file.<img src="/images/gluecrawler13.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>You are going to crawl only one data store, so select <b>No</b> from the option and click <b>Next</b>.<img src="/images/gluecrawler5.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select IAM role <b>LF-GlueServiceRole</b> from the dropdown list, this IAM role should have access to the S3 file you want to crawl. <img src="/images/gluecrawler17.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Like last exercise, you will execute this command on demand. Select <b>Run on demand</b> and move next.</li>
        <li>You are going to populate this crawler output to the same database <b>glue-demo</b>. Enter <b>s3_</b> as prefix. Leave rest of the options as default and move next.<img src="/images/gluecrawler18.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Verify all crawler information on the screen and click <b>Finish</b> to create the crawler.</li>
        <li>Click on <b>Run it now</b> link. Alternatively, you can select the crawler and run the crawler from the <b>Action</b>.<img src="/images/gluecrawler15.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>It may take up to 2 minutes for the crawler to finish crawling <b>nyctaxi.csv</b> file. You should be able to see a success message with the table count that got discovered through this crawler.<img src="/images/gluecrawler16.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Now go back to <b>Databases -> Tables</b>, you should be able to see the table <b>s3_nyctaxi</b>. Click on it.<img src="/images/gluecrawler19.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Clicking on the table, it will display table metadata, inferred schema and it's propoerties. If the table had partitions or multiple versions, it would display here. By looking at the table properties, you will discover the schema and know more about the source.<img src="/images/gluecrawler20.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>By running these two crawlers, you should get an understanding how Crawler works and how you can use Glue Crawler to discover schema coming from different sources.</li>
    </ol>
</div>