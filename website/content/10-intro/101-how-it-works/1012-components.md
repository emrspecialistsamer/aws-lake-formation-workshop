+++
title = "Lake Formation Components"
chapter = true
weight = 1012
+++

<div style="text-align: justify">
<center><h2>Lake Formation Components</h2></center>

Lake Formation provides a console to set up and manage your data lakes. Lake Formation uses AWS Glue API operations through several language-specific SDKs and the AWS Command Line Interface (AWS CLI). For information about using the AWS CLI, see the <a href="https://aws.amazon.com/cli/">AWS CLI Command Reference</a>.

</br></br>
Lake Formation uses the Data Catalog to store metadata about data lakes, data sources, transforms, and targets. The AWS Glue API provides a managed infrastructure for defining, scheduling, and running extract, transform, and load (ETL) operations on your data.  For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api.html">AWS Glue API</a>.

<h4 style="color:orange !important;">Lake Formation Console</h4>
You use the Lake Formation console to define your data lake. The console calls several API operations in the AWS Glue API to perform the following tasks:
<ul>
<li>Define AWS Glue objects such as jobs, tables, crawlers, and connections.</li>
<li>Schedule when crawlers run.</li>
<li>Define events or schedules for job triggers.</li>
<li>Search and filter lists of Lake Formation objects.</li>
</ul>

<h4 style="color:orange !important;">Data Catalog</h4>
The Data Catalog is your persistent metadata store. It is a managed service that lets you store, annotate, and share metadata in the AWS Cloud in the same way you would in an Apache Hive metastore. Each AWS account has one Data Catalog per AWS Region. It provides a uniform repository where disparate systems can store and find metadata to keep track of data in data silos, and use that metadata to query and transform the data.
</br></br>
Lake Formation provides a hierarchy of permissions to control access to databases and tables in a Data Catalog. You grant and revoke access to resources to manage access.
</div>