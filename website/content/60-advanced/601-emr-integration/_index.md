+++
title = "Integration with EMR"
chapter = true
weight = 601
autoNav = true
+++

<center><h3>Integration with Amazon EMR</h3></center>

<div style="text-align: justify">
    Beginning with Amazon EMR 5.26.0, you can launch a cluster that integrates with AWS Lake Formation. This feature is available in public beta (as of 02/10).
    <br/><br/>
    Integrating Amazon EMR with AWS Lake Formation provides the following key benefits:
    <ul>
        <li>Provides fine-grained, column-level access to databases and tables in the AWS Glue Data Catalog.</li>
        <li>Enables federated single sign-on to EMR Notebooks or Apache Zeppelin from your enterprise identity system that is compatible with Security Assertion Markup Language (SAML) 2.0.</li>
    </ul>
    To integrate Amazon EMR and Lake Formation, your organization must meet the following requirements:
    <ul>
        <li>Manage your corporate identities using an existing SAML-based Identity Provider, such as Active Directory Federation Services (AD FS). For more information, see Supported Third-Party Providers for SAML.</li>
        <li>Use the AWS Glue Data Catalog as a metadata store.</li>
        <li>Use EMR Notebooks or Apache Zeppelin to access data managed by AWS Glue and Lake Formation.</li>
        <li>Define and manage permissions in Lake Formation to access databases, tables, and columns in AWS Glue Data Catalog. For more information, see AWS Lake Formation.</li>
    </ul>
    To learn more about AWS Lake Formation & Amazon EMR Integration, please visit: <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-lake-formation.html" target="_blank">Integrating Amazon EMR with AWS Lake Formation (Beta)</a></left>
    <h4>Supported Applications</h4>
    The integration between Amazon EMR and AWS Lake Formation supports the following applications:
    <ul>
        <li>Apache Spark</li>
        <li>Apache Zeppelin</li>
        <li>Amazon EMR notebooks</li>
    </ul>
    
   <h4>Before You Begin</h4>
    To launch an Amazon EMR cluster with AWS Lake Formation, you need to complete the following prerequisite:
    <br/><br/><b><i>Configure Trust Relationship Between third-party SAML 2.0 identity provider (IdP) solutions and AWS.</i></b>
    <br/><br/>Proceed to the next exercise to configure Trust Relationship.
</div>