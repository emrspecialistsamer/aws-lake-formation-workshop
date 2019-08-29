+++
title = "Lake Formation Terminology"
chapter = true
weight = 1011
+++

<div style="text-align: justify">
    <center><h2>Lake Formation Terminology</h2></center>

    AWS Lake Formation relies on the interaction of several components to create and manage your data lake.  Following are some important terms that you will encounter in this guide.

    <h4 style="color:orange !important;">Data Lake</h4>
    The data lake is your persistent data that is stored in Amazon S3 and managed by Lake Formation using a Data Catalog. A data lake typically stores the following:
    <ul>
      <li>Structured and unstructured data</li>

      <li>Raw data and transformed data</li>
    </ul>

    For an Amazon S3 path to be within a data lake, it must be registered with Lake Formation.

    <h4 style="color:orange !important;">Data Access</h4>
    Lake Formation provides secure and granular access to data through a new grant/revoke permissions model that augments AWS Identity and Access Management (IAM) policies.

    Analysts and data scientists can use the full portfolio of AWS analytics and machine learning services, such as Amazon Athena, to access the data. The configured Lake Formation security policies help ensure that users can access only the data that they are authorized to access.

    <h4 style="color:orange !important;">Blueprint</h4>
    A blueprint is a data management template that enables you to easily ingest data into a data lake. Lake Formation provides several blueprints, each for a predefined source type, such as a relational database or AWS CloudTrail logs. From a blueprint, you can create a workflow. Workflows consist of AWS Glue crawlers, jobs, and triggers that are generated to orchestrate the loading and update of data. Blueprints take the data source, data target, and schedule as input to configure the workflow.

    <h4 style="color:orange !important;">Workflow</h4>
    A workflow is a container for a set of related jobs, crawlers, and triggers in AWS Glue. In Lake Formation, you create a workflow from a blueprint. A workflow encapsulates a complex multi-job extract, transform, and load (ETL) activity that AWS Glue can execute and track as a single entity. You can visually track the status of the different nodes in the workflow on the AWS Management Console, making it easier to monitor progress and troubleshoot. You can also share parameters across entities in the workflow.

    When you define a workflow, you select the blueprint upon which it is based. You can then run workflows on demand or on a schedule. Each workflow manages the execution and monitoring of all its defined jobs and crawlers.

    When a workflow has completed, the user who ran the workflow is granted Lake Formation data permissions on the Data Catalog tables that the workflow creates. Workflows that you create in Lake Formation are visible in the AWS Glue console.

    <h4 style="color:orange !important;">Data Catalog</h4>
    The Data Catalog is your persistent metadata store. It is a managed service that lets you store, annotate, and share metadata in the AWS Cloud in the same way you would in an Apache Hive metastore. It provides a uniform repository where disparate systems can store and find metadata to track data in data silos, and then use that metadata to query and transform the data. Lake Formation uses the AWS Glue Data Catalog to store metadata about data lakes, data sources, transforms, and targets.

    Metadata about data sources and targets is in the form of databases and tables. Tables store schema information, location information, and more. Databases are collections of tables. Lake Formation provides a hierarchy of permissions to control access to databases and tables in the Data Catalog.

    Each AWS account has one Data Catalog per AWS Region.

    <h4 style="color:orange !important;">Underlying Data</h4>
    Underlying data refers to the source data or data within the data lakes that Data Catalog tables point to.

    <h4 style="color:orange !important;">Principal</h4>
    A principal is an AWS Identity and Access Management (IAM) user or role that does work in Lake Formation.

    <h4 style="color:orange !important;">Data Lake Administrator</h4>
    A data lake administrator is a principal who can grant any principal (including self) any permission on any Data Catalog resource or data location. Designate a data lake administrator as the first user of the Data Catalog. This user can then grant more granular permissions of resources to other principals.

    Note

    IAM administrative users—users with the AdministratorAccess AWS managed policy—are not automatically data lake administrators. For example, they can't register an Amazon S3 location. However, they can use the Lake Formation console or API to designate themselves as data lake administrators.

    For information about the capabilities of a data lake administrator, see Implicit Permissions. For information about designating a user as a data lake administrator, see Create a Data Lake Administrator.










</div>
