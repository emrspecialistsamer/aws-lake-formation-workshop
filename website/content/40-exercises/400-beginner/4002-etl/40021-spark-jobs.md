+++
title = "Spark Jobs"
chapter = true
weight = 40021
+++

<div style="text-align: justify">
    An Apache Spark ETL job consists of the business logic that performs ETL work in AWS Glue. You can monitor job runs to understand runtime metrics such as success, duration, and start time. The output of a job is your transformed data, written to a location that you specify.
    <br/><br/>In the previous step, you crawled S3 <b>.csv</b> file and discovered the schema of NYC taxi data. In this exercise you will create a Spark job in Glue, which will read that source, write them to S3 in Parquet format.
    <ol>
        <li>Click on the <b>Jobs</b> option on the left and then click on <b>Add job</b> button.<img src="/images/gluejob1.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Give a name for your crawler <b>nyctaxi-csv-to-parquet</b>, select IAM role <b>LF-GlueServiceRole</b> from the IAM role drop-down list. Since, you are creating Spark ETL job, so leave rest of the fields as default and move to the field where it ask you where to store your script and temporary directory. The CloudFormation template created the required bucket, here you enter the path for the script location <b>s3://lf-glue-bucket-&lt;account-id&gt;/scripts</b> and temporary directory <b>s3://lf-glue-bucket-&lt;account-id&gt;/temp</b> and proceed to the next window.<img src="/images/gluejob2.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>In this section, you define your source. For you, the source is the s3_nyctaxi as you are going to transform that source to Parquet. Select <b>s3_nyctaxi</b> as the source.<img src="/images/gluejob3.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Here you are transforming your source to a different dataset. You can also find matching records using ML transforms. Select <b>Change schema</b> and proceed next.<img src="/images/gluejob4.png" style="margin:15px 0px; border:1px solid black; height:250px;"/></li>
        <li>You have multiple options for target, you can update already existing catalog/table or you can create a new target. For this exercise, you are going to write into S3 in Parquet format. Enter values based on that, using the same bucket that got created for this Glue exercise.<img src="/images/gluejob5.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Glue automatically detects mapping between source and target. You can change the mapping based on your requirement, eg.g. change column names, drop, add or merge columns. For this exercise, leave the mappings as it is and click on <b>Save job and edit script</b>. <img src="/images/gluejob6.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Glue will generate the script based on your configuration. You have full authority to your script, you can add additional business logics, modify source or target, change mappings. Once you satisfy with your script, you run it by clicking on the <b>Run job</b> button.<img src="/images/gluejob7.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Clicking on the <b>Run job</b> should open up this window. Here, you provide additional configurations for the job. You can pass Tags, update different monitoring options, provide library path or configure worker type and resource size. For this exercise, leave all options as default and click on <b>Run job</b> button.<img src="/images/gluejob8.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>When the job is running, you will notice that the <b>Run job</b> button is grayed out with a circular-spinner icon.<img src="/images/gluejob9.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Exit from the script window. You can monitor additional job metrics by going back to the Glue job console and select individual job. Metrics tab displays job metrics, History tab shows job history. <img src="/images/gluejob10.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li><b>Run status</b> column shows job status, this Spark job may take from 2 to 12 minutes. Once the job is completed successfully, it will show up <b>Succeed</b> status.<img src="/images/gluejob11.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>If the job is finished successfully, it should have created Parquet output in the target location. Open up the S3 console and check the target location. Location should be populated with Parquet files as displayed below.<img src="/images/gluejob12.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>You learn how Glue auto-generates PySpark script for you depending on your ETL job. It can also generate Scala codes by following the same steps. In the next exercise, you will learn how you can run Python-based jobs using Glue Python shell.</li>
    </ol>
</div>
