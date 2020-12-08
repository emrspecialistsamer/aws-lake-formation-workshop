+++
title = "Python Shell"
chapter = true
weight = 4022
+++

<div style="text-align: justify">
    You can also use a Python shell job to run Python scripts as a shell in AWS Glue. With a Python shell job, you can run scripts that are compatible with Python 2.7 or Python 3.6. The environment for running a Python shell job supports libraries such as: Boto3, collections, CSV, gzip, multiprocessing, NumPy, pandas, pickle, PyGreSQL, re, SciPy, sklearn, xml.etree.ElementTree, zipfile.
    <br/><br/>In the previous exercise, you used PySpark to transform NYC Taxi .csv data to Parquet. In this exercise, you will use Panda through Python Shell to covert the same input data to JSON.
    <ol>
        <li>Click on the <b>Jobs</b> option on the left and then click on <b>Add job</b> button.<img src="/images/pythonjob1.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Give a name for your Python Shell job <b>nyctaxi-csv-to-json</b>, select IAM role <b>LF-GlueServiceRole</b> from the IAM role drop-down list. Select <b>Python Shell</b> as your job type. The CloudFormation template already placed a Python script in your workshop bucket and showed the location as the CloudFormation output. Enter the Python script path as shown below:<img src="/images/pythonjob2.png" style="margin:15px 0px; border:1px solid black"/><img src="/images/pythonjob3.png" style="margin:15px 0px; border:1px solid black"/></li>
        <Li>Leave the rest of the fields as it is and click Next. In the next section, it shows the connection options. If you want to use any existing Glue Connection in your script, you can do that as well. But, for this exercise, it doesn't use Glue Connection. Click <b>Save job and edit script</b>.</Li>
        <li>It will open up the existing Python script on the Glue console. The script has one input parameter which is the name of the bucket. The key for the parameter is <b>--bucket</b>.<img src="/images/pythonjob4.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Click <b>Run job</b> and expand the second toggle where it says job parameter.<img src="/images/pythonjob5.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Go to the <b>Job parameters</b> section and enter <b>--bucket</b> as your key and bucket name (from the CloudFormation output) as the value and click <b>Run job</b>.<img src="/images/pythonjob6.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>You can exit from the script window and check the job status by selecting the job from the list.<img src="/images/pythonjob7.png" style="margin:15px 0px; border:1px solid black"/><img src="/images/pythonjob8.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>A successful job will create a JSON file in the path where the input is stored. Go to your S3 console to verify the output file.<img src="/images/pythonjob9.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>You can download the JSON file and verify the content by opening it up in a text editor.<img src="/images/pythonjob10.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>By running the last two exercises, now you should have an understanding of Glue ETL, how to create a different type of Glue jobs, configure and run them in a serverless manner.</li>
    </ol>
</div>
