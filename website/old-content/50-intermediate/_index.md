+++
title = "Intermediate - Labs"
chapter = true
weight = 50
autoNav = true
+++

<center><h3>Intermediate Level Labs</h3></center>

<div style="text-align: justify">
    AWS Lake Formation is built on AWS Glue, and the services interact in the following ways:
    <ul>
        <li>Lake Formation and AWS Glue share the same Data Catalog.</li>
        <li>The following Lake Formation console features invoke the AWS Glue console:
            <ul>
                <li>Jobs - Lake Formation blueprint creates Glue jobs to ingest data to data lake.</li>
                <li>Crawlers - Lake Formation blueprint uses Glue crawlers to discover source schemas.</li>
            </ul>
        </li>
        <li>The workflows generated when you use a Lake Formation blueprint are AWS Glue workflows. You can view and manage these workflows in both the Lake Formation console and the AWS Glue console.</li>
        <li> Machine learning transforms are provided with Lake Formation and are built on AWS Glue API operations. You create and manage machine learning transforms on the AWS Glue console. </li>
    </ul>
These labs cover basic functionalities of Lake Formation, how different components can be glued together to create a data lake on AWS, how to configure different security policies to provide access, how to do search across catalogs and collaborate.
    <br/><br/>Follow the following steps one-by-one to complete these labs:
    {{% children showhidden="false" %}}
</div>