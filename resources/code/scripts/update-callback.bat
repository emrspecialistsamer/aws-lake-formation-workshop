Copy-S3Object -BucketName lf-workshop-account-id -Key metadata/knox.cer -LocalFile C:\\cfn\knox.cer

$KnoxCert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2

$KnoxCert.Import("c:/cfn/knox.cer")

$EP = New-AdfsSamlEndpoint -Binding "POST" -Protocol "SAMLAssertionConsumer" -Uri "https://public-dns:8442/gateway/knoxsso/api/v1/websso?pac4jCallback=true&client_name=SAML2Client“

$RuleSetAll = New-AdfsClaimRuleSet -ClaimRule ('c:[Type == "http://schemas.microsoft.com/ws/2008/06/identity/claims/windowsaccountname"]
=> issue(Type = "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier", Issuer = c.Issuer, OriginalIssuer = c.OriginalIssuer, Value = c.Value, ValueType = c.ValueType, Properties["http://schemas.xmlsoap.org/ws/2005/05/identity/claimproperties/format"] = "urn:oasis:names:tc:SAML:2.0:nameid-format:persistent");','c:[Type == "http://schemas.microsoft.com/ws/2008/06/identity/claims/windowsaccountname", Issuer == "AD AUTHORITY"]
=> issue(store = "Active Directory", types = ("https://aws.amazon.com/SAML/Attributes/RoleSessionName"), query = ";sAMAccountName;{0}", param = c.Value);','c:[Type == "http://schemas.microsoft.com/ws/2008/06/identity/claims/windowsaccountname", Issuer == "AD AUTHORITY"]
=> issue(store = "Active Directory", types = ("https://lakeformation.amazon.com/SAML/Attributes/Username"), query = ";sAMAccountName;{0}", param = c.Value);','=> issue(Type = "https://aws.amazon.com/SAML/Attributes/Role", Value = "arn:aws:iam::account-id:role/LF-SAML-Role-ADFS,arn:aws:iam::account-id:saml-provider/ADFSSAMLProvider");')

Set-AdfsRelyingPartyTrust -TargetIdentifier urn:amazon:webservices -RequestSigningCertificate $KnoxCert -SamlEndpoint $EP  -IssuanceTransformRules $RuleSetAll.ClaimRulesString