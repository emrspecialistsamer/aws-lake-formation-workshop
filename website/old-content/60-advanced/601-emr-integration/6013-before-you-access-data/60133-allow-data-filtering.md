+++
title = "Allow Data Filtering"
chapter = false
weight = 60133
autoNav = true
+++

<div style="text-align: justify">
 Lake Formation supports column-level permissions to restrict access to specific columns in a table. Integrated
 analytics services like Amazon Athena, Amazon Redshift Spectrum, and Amazon EMR retrieve non-filtered table
 metadata from the AWS Glue Data Catalog. The actual filtering of columns in query responses is the responsibility of the integrated service.
 By default, this filter is opt out for Amazon EMR. Amazon EMR clusters will not be able to access data in Amazon S3 locations that are registered with Lake Formation.
 
 <br/><br/>In this step, we enable this filter as in this lab, you will use EMR Notebooks and Apache Zeppelin on
  Amazon EMR to access data managed by Lake Formation.
  <ol>
    <li>Continue in the Lake Formation console at <a href="https://console.aws.amazon.com/lakeformation/">https://console.aws.amazon.com/lakeformation/</a>. Ensure
 that you are signed in as the <b>lf-admin</b> user.</li>
 <li>Check the box for <b>Allow Amazon EMR clusters to filter data managed by Lake Formation.</b> and enter your
  account id under <b>AWS Account IDs</b> box. Click on <b>Save</b> and proceed to the next chapter.
  <img src="/images/emr-data-filter.png" style="margin:15px 0px; border:1px solid black"/></li>
  </ol>
</div>

