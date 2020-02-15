+++
title = "Auth0"
chapter = true
weight = 60111
autoNav = true
+++

<center><h3>Auth0</h3></center>

<div style="text-align: justify">
    <a href="https://auth0.com/">Auth0</a> is a flexible, drop-in solution to add authentication and authorization services to your applications. Follow these steps to create a free Auth0 account and setup trust relationship between your new account and Lake Formation.
    <ol>
        <li>Click <a href="https://auth0.com/signup">on this link</a> to open Auth0 sign up page and create a free Auth0 account<img src="/images/auth0.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Enter a unique Tenant name or use the one provided by Auth0.<img src="/images/auth1.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Enter your information to complete the account creation process.</li>
        <li>On the dashboard, navigate to <b>Applications</b> tab and click on <b>Create Application</b>.<img src="/images/auth2.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Enter a name for your application (in this example: AWS SSO) and select <b>Regular Web Applications</b> and click on <b>Create</b>.<img src="/images/auth3.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Click on the <b>Addons</b> tab and enable <b>SAML2 WEB APP</b>.<img src="/images/auth4.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>It will open up a window to take a callback URL. Enter the following temporary callback URL in the box. Once the EMR cluster is ready, you will replace the <font color="red"><b>public-dns</b></font> with EMR master node DNS.<pre>https://<font color="red">public-dns</font>:8442/gateway/knoxsso/api/v1/websso?pac4jCallback=true&client_name=SAML2Client</pre></li>
        <li>And paste the following SAML configuration in the <b>Setting</b> box and click on <b>Enable</b> at the bottom of the window.<pre>{
    "audience": "urn:amazon:webservices",
    "mappings": {
            "email": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress",
            "name": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name"
    },
    "createUpnClaim": false,
    "passthroughClaimsWithNoMapping": false,
    "mapUnknownClaimsAsIs": false,
    "mapIdentities": false,
    "nameIdentifierFormat": "urn:oasis:names:tc:SAML:2.0:nameid-format:persistent",
    "nameIdentifierProbes": [
        "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress"
    ]
}</pre><img src="/images/auth5.png" style="margin:15px 0px; border:1px solid black"/></li>
    </ol>
</div>
