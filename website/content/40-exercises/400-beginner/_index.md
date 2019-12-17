+++
title="Beginner Level"
chapter=true
weight=400
autoNav = true
+++

<center><h3>Beginner Level Exercise</h3></center>

<div style="text-align: justify">
    AWS Lake Formation is built on AWS Glue, and the services interact in the following ways:
    <ul>
        <li>Lake Formation and AWS Glue share the same Data Catalog.</li>
        <li>The following Lake Formation console features invoke the AWS Glue console:</li>
        <ul>
            <li>Jobs - Lake Formation blueprint creates Glue jobs to ingest data to data lake.</li>
            <li>Crawlers - Lake Formation blueprint uses Glue crawlers to discover source schemas.</li>
        </ul>
        <li>The workflows generated when you use a Lake Formation blueprint are AWS Glue workflows. You can view and manage these workflows in both the Lake Formation console and the AWS Glue console.</li>
        <li> Machine learning transforms are provided with Lake Formation and are built on AWS Glue API operations. You create and manage machine learning transforms on the AWS Glue console. </li>
    </ul>
    If you already know AWS Glue, this chapter is optional for you, you can directly go to the next chapter - <b>Intermediate Level Exercise</b>. By running exercises from this chapter, you will know how to use different AWS Glue components. Having Glue experience will help adopting Lake Formation but it is not required. Follow the following steps one-by-one to complete this exercise:
    {{% children showhidden="false" %}}
</div>