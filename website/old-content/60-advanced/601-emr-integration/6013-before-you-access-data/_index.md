+++
title = "Before You Access Data"
chapter = false
weight = 6013
autoNav = true
+++

<div style="text-align: justify">
    {{% notice note %}}Please make sure to finish the following chapters from the Intermediate Labs section before proceeding.
    {{% /notice %}}
    <ul>
          <li><a href="../../50-intermediate/501-admin-db-creator.html">Admin & Database Creators</a></li>
          <li><a href="../../50-intermediate/502-databases.html">Databases</a></li>
          <li><a href="../../50-intermediate/503-data-lake-locations.html">Data Lake Locations</a></li>
          <li><a href="../../50-intermediate/504-blueprints.html">Blueprints</a></li>
    </ul>
    Before you access the data you need to grant data access through AWS Lake Formation and update the SAML Identity Provider Application Callback URL with proper Amazon EMR cluster Master Node DNS.
    
    <br/><br/>
    In the next section, you will grant the IdP user with the expected permissions and update SAML Identity Provider Application Callback URL (either Auth0 or Okta).
</div>