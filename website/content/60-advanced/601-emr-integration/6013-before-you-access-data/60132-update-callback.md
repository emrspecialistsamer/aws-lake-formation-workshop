+++
title = "Update Callback URL"
chapter = false
weight = 60132
autoNav = true
+++

<div style="text-align: justify">
    In this exercise, you will make your IdP callback URL to reflect Amazon EMR master DNS. Depending on which IdP you configured, follow the corresponding steps to update the settings.
    <br/><br/>First, take a note for the value <b>EMRMasterNodeDNS</b> from the CloudFormation stack <b>Lake-Formation-With-EMR</b> output.
    <h4>For Auth0</h4>
    <ol>
      <li>Login into the Auth0 account and select AWS SSO Application and under Setting tab replace Allowed Callback URLs <b>public-dns</b> with EMR Master Node DNS.<img src="/images/auth0-dns-callbackupdate.png" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Scroll down to the bottom of the page and click on SAVE CHANGES.</li>
    </ol>
    <h4>For Okta</h4>
    <ol>
      <li>Login into Okta account and select Lake-Formation application. Then go to General tab -> SAML Settings -> Configure SAML section. Edit the Single sign-on URL field by replacing <b>public-dns</b> with the Amazon EMR master node DNS.<img src="/images/okta-editsaml.png" title="Update Auth0 Callback URL" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Scroll down to the bottom of the page and click on <b>Next</b> and then click on <b>Finish</b> on the Feedback tab.</li>
    </ol>
    <h4>For AD FS </h4>
    <ol>
      <li>Login into Windows Server 2019 you connected in the previous chapter, Open PowerShell and execute the following commands after making the required changes. You can use a Text editor to make these changes. <br/><br/> Here we are downloading Knox public certificate from S3 bucket (as part of EMR Step during EMR cluster creation we have extracted Knox public certificate and uploaded to your S3 bucket) and updating Relying Party Trust with Knox certificate, Claim Rules as well as SAML endpoint URL with Amazon EMR cluster's master DNS. You can download this script {{% button href="https://aws-data-analytics-workshops.s3.amazonaws.com/lake-formation-workshop/scripts/update-callback.bat" icon="fas fa-download" icon-position="right" %}}update-callback.bat{{% /button %}} here.
          {{% notice note %}} Please make sure to replace <b style="color:red">account-id</b> with your AWS AccountId and <b style="color:red">public-dns</b> with EMR cluster's Master Public DNS. You can find the value in CloudFormation stack output <b>EMRMasterNodeDNS</b>.
        {{% /notice %}}
        <pre>Copy-S3Object -BucketName lf-workshop-<b style="color:red">account-id</b> -Key metadata/knox.cer -LocalFile C:\\cfn\knox.cer

    $KnoxCert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2

    $KnoxCert.Import("c:/cfn/knox.cer")

        $EP = New-AdfsSamlEndpoint -Binding "POST" -Protocol "SAMLAssertionConsumer" -Uri "https://<b style="color:red">public-dns</b>:8442/gateway/knoxsso/api/v1/websso?pac4jCallback=true&client_name=SAML2Client“

        $RuleSetAll = New-AdfsClaimRuleSet -ClaimRule ('c:[Type == "http://schemas.microsoft.com/ws/2008/06/identity/claims/windowsaccountname"]
        => issue(Type = "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier", Issuer = c.Issuer, OriginalIssuer = c.OriginalIssuer, Value = c.Value, ValueType = c.ValueType, Properties["http://schemas.xmlsoap.org/ws/2005/05/identity/claimproperties/format"] = "urn:oasis:names:tc:SAML:2.0:nameid-format:persistent");','c:[Type == "http://schemas.microsoft.com/ws/2008/06/identity/claims/windowsaccountname", Issuer == "AD AUTHORITY"]
        => issue(store = "Active Directory", types = ("https://aws.amazon.com/SAML/Attributes/RoleSessionName"), query = ";sAMAccountName;{0}", param = c.Value);','c:[Type == "http://schemas.microsoft.com/ws/2008/06/identity/claims/windowsaccountname", Issuer == "AD AUTHORITY"]
        => issue(store = "Active Directory", types = ("https://lakeformation.amazon.com/SAML/Attributes/Username"), query = ";sAMAccountName;{0}", param = c.Value);','=> issue(Type = "https://aws.amazon.com/SAML/Attributes/Role", Value = "arn:aws:iam::<b style="color:red">account-id</b>:role/LF-SAML-Role,arn:aws:iam::<b style="color:red">account-id</b>:saml-provider/ADFSSAMLProvider");')

          Set-AdfsRelyingPartyTrust -TargetIdentifier urn:amazon:webservices -RequestSigningCertificate $KnoxCert -SamlEndpoint $EP  -IssuanceTransformRules $RuleSetAll.ClaimRulesString</pre>
        <img src="/images/adfs-updatecallbackurl.png" title="Update ADFS Callback URL" style="margin:15px 0px; border:1px solid black"/> </li>
    </ol>
</div>