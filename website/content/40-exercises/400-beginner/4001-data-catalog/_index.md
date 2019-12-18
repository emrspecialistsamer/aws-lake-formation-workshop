+++
title = "Glue Data Catalog"
chapter = true
weight = 4001
+++

<center><h3>Glue Data Catalog</h3></center>

<div style="text-align: justify">
  The AWS Glue Data Catalog is a managed service that lets you store, annotate, and share metadata in the AWS Cloud in the same way you would in an Apache Hive metastore. Each AWS account has one AWS Glue Data Catalog per AWS region. It provides a uniform repository where disparate systems can store and find metadata to keep track of data in data silos, and use that metadata to query and transform the data.

  <br/><br/>In addition, it has the following few extensions:
  <ul>
    <li><b>Search</b> - To search over metadata for data discovery</li>
    <li><b>Connection</b> - To connect to different data sources for data discovery</li>
    <li><b>Classification</b> - For identifying and parsing files</li>
    <li><b>Versioning</b> - Versioning of table metadata as schemas evolve and other metadata are updated</li>
  </ul>

  <h4 style="color:orange !important;">Glue Crawler</h4>
  You can use a crawler to populate the AWS Glue Data Catalog with tables. It automatically discover new data, extracts schema definitions. It detects schema changes and version tables. It can also detect Hive style partitions on Amazon S3.
  <h4 style="color:orange !important;">Glue Connection</h4>
  Connections are used by crawlers and jobs in AWS Glue to access certain types of data stores. A connection contains the properties that are needed to access your data store.
  <h4 style="color:orange !important;">Glue Classifier</h4>
  A classifier reads the data in a data store. If it recognizes the format of the data, it generates a schema. The classifier also returns a certainty number to indicate how certain the format recognition was. AWS Glue provides a set of built-in classifiers, but you can also create custom classifiers.
  <br/><br/>The following diagram shows different connections and bulit-in classifiers which Glue offers.<img src="/images/glueconnectioncrawler.png" align="middle" style="margin:15px 0px; border:1px solid black"/>
  The following workflow diagram shows how AWS Glue crawlers interact with data stores and other elements to populate the Data Catalog.<img src="/images/PopulateCatalog-overview.png" align="middle" style="margin:15px 0px; border:1px solid black"/>
  The following is the general workflow for how a crawler populates the AWS Glue Data Catalog:
  <ol>
    <li>A crawler runs any custom classifiers that you choose to infer the format and schema of your data. You provide the code for custom classifiers, and they run in the order that you specify.</li>
    <li>The first custom classifier to successfully recognize the structure of your data is used to create a schema. Custom classifiers lower in the list are skipped. If no custom classifier matches your data's schema, built-in classifiers try to recognize your data's schema. An example of a built-in classifier is one that recognizes JSON.</li>
    <li>The crawler connects to the data store. Some data stores require connection properties for crawler access.</li>
    <li>The inferred schema is created for your data.</li>
    <li>The crawler writes metadata to the Data Catalog. A table definition contains metadata about the data in your data store. The table is written to a database, which is a container of tables in the Data Catalog. Attributes of a table include classification, which is a label created by the classifier that inferred the table schema.</li>
  </ol>
  In the next step, you will go through a few exercises to learn more about Glue Data Catalog components:
  {{% children showhidden="false" %}}
</div>