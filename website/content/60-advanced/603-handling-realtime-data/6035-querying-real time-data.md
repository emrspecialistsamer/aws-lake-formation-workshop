+++
title = "Querying Real Time Data"
chapter = true
weight = 6035
+++

<center><h3>Querying Real Time Data</h3></center>

<div style="text-align: justify">
   
 
 As you may recall, a developer now has access to the sales_event table. Login to your AWS account as the user <b>lf-developer</b>. Let see how can we query real time data using <b>Athena</b>. 
    <ol>
        
        <li>From the AWS Management console, search for <b>Amazon Athena</b> service 
            <img src="/images/rt_query1.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Make sure you are logged in as a <font size="3" color="red"><b>lf-developer</b></font> 
            <img src="/images/rt_query2.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Please select the <b>tpc</b> database
            <center><img src="/images/rt_query3.png" style="margin:15px 0px; border:1px solid black"/></center></li>  
        <li>Select the <b>dl_tpc_sales_event</b> table and see the columns that were added by the Glue Crawler 
            <center><img src="/images/rt_query4.png" style="margin:15px 0px; border:1px solid black"/></center></li>
        <li>Run the following query:<br><br> <b><i>SELECT * FROM "tpc"."dl_tpc_sales_event" limit 10;</i></b><br><br>This query is going to show a sample of the data that is inside the table
            <img src="/images/rt_query5.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Run the following query every <i>60 seconds</i> and you will notice how the number of records increases:<br><br><b><i>SELECT count(productname) FROM "tpc"."dl_tpc_sales_event";</i></b><br><br>Time 1:
            <img src="/images/rt_query6.png" style="margin:15px 0px; border:1px solid black"/></li><br><br>Time 2:<br><br>
            <img src="/images/rt_query7.png" style="margin:15px 0px; border:1px solid black"/> 
        <li>Now, Let's try to query the same table with another user <font size="3" color="red"><b>without</b></font> access to the dl_tpc_sales_even table and see what happens. Login to your AWS account as the user <b>lf-business-analyst</b>. (Default password: Password1!)</li> 
        <li>From the AWS Management console, search for <b>Amazon Athena</b> service <img src="/images/Query-AthenaService-search.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Make sure you are logged in as a <b>lf-business-analyst</b> user<img src="/images/business-analyst-view.png" style="margin:15px 0px; border:1px solid black"/></li> 
        <li>Please select the <b>tpc</b> database
            <center><img src="/images/rt_query3.png" style="margin:15px 0px; border:1px solid black"/></center></li> 
        <li>You can see the list of tables that the lf-business-analyst user has access, and <b>dl_tpc_sales_even</b> is not one of them
            <center><img src="/images/rt_query11.png" style="margin:15px 0px; border:1px solid black"/></center></li> 
        <li>Run the following query:<br><br> <b><i>SELECT * FROM "tpc"."dl_tpc_sales_event" limit 10;</i></b><br><br>This query is going to show a sample of the data that is inside the table
            <img src="/images/rt_query12.png" style="margin:15px 0px; border:1px solid black"/></li>  
        <li>The last query tried to access the dl_tpc_sales_even table and as expected the business analyst user got an error message.
            <img src="/images/rt_query13.png" style="margin:15px 0px; border:1px solid black"/></li>            
               
    </ol>
    <li> Congratulations!, you have finished this Lab</li>
 </div>
 
