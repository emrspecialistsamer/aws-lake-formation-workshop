+++
title = "Glue ETL"
chapter = true
weight = 402
+++

<center><h3>Glue ETL</h3></center>

<div style="text-align: justify">
  AWS Glue provides a console and API operations to set up and manage your extract, transform, and load (ETL) workload. You can use API operations through several language-specific SDKs and the AWS Command Line Interface (AWS CLI).
  <br/><br/>Using the metadata in the Data Catalog, AWS Glue can autogenerate Scala or PySpark (the Python API for Apache Spark) scripts with AWS Glue extensions that you can use and modify to perform various ETL operations. For example, you can extract, clean, and transform raw data, and then store the result in a different repository, where it can be queried and analyzed.
  <br/><br/>A job is the business logic that performs the extract, transform, and load (ETL) work in AWS Glue. When you start a job, AWS Glue runs a script that extracts data from sources, transforms the data, and loads it into targets. You can create jobs in the ETL section of the AWS Glue console.
  <br/><br/>The following diagram summarizes the basic workflow and steps involved in authoring a job in AWS Glue:
  <center><img src="/images/AuthorJob-overview.png" align="middle" style="margin:15px 0px; border:1px solid black"/></center>
  The following describes an overall process of authoring jobs in the AWS Glue console:
  <ol>
    <li>You choose a data source for your job. The tables that represent your data source must already be defined in your Data Catalog. If the source requires a connection, the connection is also referenced in your job. If your job requires multiple data sources, you can add them later by editing the script.</li>
    <li>You choose a data target for your job. The tables that represent the data target can be defined in your Data Catalog, or your job can create the target tables when it runs. You choose a target location when you author the job. If the target requires a connection, the connection is also referenced in your job. If your job requires multiple data targets, you can add them later by editing the script.</li>
    <li>You customize the job-processing environment by providing arguments for your job and generated script.</li>
    <li>Initially, AWS Glue generates a script, but you can also edit this script to add sources, targets, and transforms.</li>
    <li>You specify how your job is invoked, either on-demand, by a time-based schedule, or by an event.</li>
    <li>Based on your input, AWS Glue generates a PySpark or Scala script. You can tailor the script based on your business needs.</li>
  </ol>
  In the next step, you will go through a few exercises to learn more about different Glue ETL approaches:
  {{% children showhidden="false" %}}
</div>