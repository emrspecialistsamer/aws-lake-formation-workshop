+++
title = "Configure Trust Relationship"
chapter = true
weight = 6011
autoNav = true
+++

<center><h3>Configure Trust Relationship</h3></center>

<div style="text-align: justify">
    To establish a trust relationship between your organization's Identity Provider (IdP) and AWS, you must do the following:
    <ul>
        <li>Tell your IdP about AWS as a service provider by adding relying party trust between IdP and AWS</li>
        <li>Tell AWS about your external IdP by creating an IAM identity provider and role for SAML access in AWS IAM</li>
    </ul>
    <h5>Supported Third-Party Providers for SAML</h5>
    Integration between Amazon EMR and AWS Lake Formation supports SAML 2.0-based federation with the following third-party providers:
    <ul>
        <li>Auth0</li>
        <li>Okta</li>
        <li>Microsoft Active Directory Federation Services (AD FS)</li>
    </ul>
    In the next section, you will create an user account in one of the IdP providers and set up a trust relationship between that account and AWS.
</div>