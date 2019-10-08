+++
title = "Personas"
chapter = true
weight = 40151
+++

<div style="text-align: justify">
  One of the key features of AWS Lake formation is its ability to secure access to data in your data lake. Lake Formation provides its own permissions model that augments the AWS Identity and Access Management (IAM) permissions model. For this workshop, we will secure access to the data imported into the TPC catalog. As a refresher, we have four different personas in this workshop.
  <ul>
    <li><b>Admin user</b>: Is a user that has administrative privileges that allow him to access. Admin user will be able to access the Data Catalog, Data location along with implicit grants of additional Lake Formation permissions
    </li>
    <li><b>Developer</b>: Is a user who has all access to web_page and web_sales tables only as her/his role is limited to testing the quality of data and performing tests on sample data.
    </li>
    <li><b>Business Analyst</b>: Is a user who derives insights from the data generated via click streams and web sales. This role has access to all tables with the exception of specific personally identifiable columns (name, email, birth date, birth country etc) in Customer table.
    </li>
    <li><b>Campaign Manager</b>: Is a user that has access to all tables to run marketing campaigns with the exception of web_sales table.
  </ul>
  <b>Note:</b> Lake Formation blueprints will create a few temp tables for the ingestion process, all temp table names will start with underscore (_) as prefix, for example:  _dl_tpc_customer. Rest of the exercises will <b>EXCLUDE</b> all temp tables. <br/><br/>
  Let's go ahead and create these data permission in Lake Formation for the above personas.
</div>
