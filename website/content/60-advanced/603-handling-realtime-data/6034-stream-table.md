+++
title = "Create Stream Table"
chapter = true
weight = 6034
+++

<center><h3>Create Stream Table</h3></center>

<div style="text-align: left">
    In this section, you will create a new table on Lake Formation that is going to show the real-time data that comes from the Firehose delivery stream created in the previous section.
    <ol>
        <li>Go to <b>Services</b> and search for <b>Lake Formation</b>.
            <img src="../../images/rt_table1.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Click on <b>Crawlers</b> section on the left-hand side. 
            <img src="../../images/rt_table2.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>This is going to open a new Glue Crawler tab, select <b>Add Crawler</b>.
            <img src="../../images/rt_table3.png" style="margin:15px 0px; border:1px solid black"/></li>  
        <li>Add <b><i>tpc_sales_events</b></i> as the crawler name.
            <img src="../../images/rt_table4.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select the <b>Data stores</b> Option.
            <img src="../../images/rt_table5.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Configure the Data Store as follows:
            <ul>
            	<li>Choose a data store: <b>S3</b></li>
            	<li>Crawl Data in: <b>Specified path in my account</b></li>
            	<li>Include Path: Select the sales-event folder in your data lake bucket <b><i>s3://lf-data-lake-bucket-youraaccountnumber/dl_tpc_sales_event</b></i></li>
            </ul>
            and then select <b>Next</b>.
            <img src="../../images/rt_table6.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select <b>No</b> on <b>Add another data store</b>.
            <img src="../../images/rt_table7.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Configure the IAM role as follows:
            <ul>
            	<li>Select <b>Choose an existing IAM role</b></li>
            	<li>Select the <b>LF-GlueServiceRole</b> role</li>
            </ul>
            and then select <b>Next</b>.
            <img src="../../images/rt_table8.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select <b>Run on demand</b>.
            <img src="../../images/rt_table9.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Configure the crawler's output, select <b>tpc</b> as the database and click <b>Next</b>.
            <img src="../../images/rt_table10.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select <b>Finish</b>.
            <img src="../../images/rt_table11.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Click on <b>Run it now?</b>
            <img src="../../images/rt_table12.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>This process takes 4 minutes, wait until you see the <b>Completed</b> status  and that <b>1</b> table was created and then close the browser Tab.
            <img src="../../images/rt_table13.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Go back to the Lake Formation console, click on <b>Data permissions</b> section on the left-hand side.
            <img src="../../images/rt_table15.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li> Then click on <b>Grant</b> button.
            <img src="../../images/rt_table16.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>On the window that pops up, fill out IAM users and roles as <b>lf-developer</b>, choose tpc for the database and select <i><b>dl_tpc_sales_event</b></i> as the table with <b>Select</b> as the <font size="3" color="red"><b>only Table permission</b></font>.<br><br>
              Leave the <b>Grantable permissions</b> unselected and click on the <b>Grant</b> button.
             <img src="../../images/rt_table17.png" style="margin:15px 0px; border:1px solid black"/></li>
    </ol>
    Now, you are going to query the real-time data in Amazon Athena using different users.
</div>
 
