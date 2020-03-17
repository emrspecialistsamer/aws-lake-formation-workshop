+++
title = "Apache Zeppelin"
chapter = true
weight = 60141
autoNav = true
+++

<center><h3>Apache Zeppelin</h3></center>

<div style="text-align: justify">
   Apache Zeppelin is integrated with Lake Formation and can be used once an EMR cluster integrated with Lake Formation has been created. To access the Zeppelin notebook application, you must first ensure that your cluster’s EC2 master security group is configured to allow access to the Proxy Agent (port 8442) from your desktop.
   <br/><br/>Finish the following steps to access the Zeppelin notebook and execute queries:
   <ol>
      <li>On the Amazon EMR Console click on Clusters and select the cluster which got created through CloudFormation (<b>LF-EMRCluster</b>) and click on View Details.</li>
      <li>Click on <b>Security groups for Master</b> link.<img src="/images/masternode-securith-group.png" title="Master Node Security" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Select <b>ElasticMapReduce-master</b> security group. Under Inbound tab click on Edit and Add New Inbound Rule to allow traffic (Type: Custom TPC) from your computer IP on port <b>8442</b> and click <b>Save</b> .<img src="/images/1mastersecuritygroup8442.png" title="Add Rule" style="margin:15px 0px; border:1px solid black"/>
         <img src="/images/2mastersecuritygroup8442.png" title="Add Rule" style="margin:15px 0px; border:1px solid black"/>
         <b>Note:</b> Please Turn off your VPN, sometimes high levels ports are blocked by VPN.</li>
      <li>Clear the browser cache/cookies as your previous login into IdP account is still in the session <b>OR</b> open in Incognito mode if you are using Google Chrome.</li>
      <li>To access Apache Zeppelin, copy the <b>EMRMasterNodeDNS</b> value from CloudFormation stack output. Using your browser, navigate to the following URL. Ensure the URL includes the trailing slash at the end and you replace EMRMasterNodeDNS.
      <pre>https://<b>EMRMasterNodeDNS</b>:8442/gateway/default/zeppelin/</pre></li>
      <li>Once the Proxy Agent’s certificate is accepted, your browser redirects you to your Identity Provider (IdP) login page to authenticate. Once authenticated with user <b>emr-developer@somecompany.com</b> and password you provided, you will be redirected to Zeppelin.<br/><b>Note:</b> In the case of Okta, you have to choose the forgot password question for the first time.
         <img src="/images/auth0-authenticate.png" title="Auth0 Authentication" style="margin:15px 0px; border:1px solid black"/>
         <img src="/images/okta-login.png" title="Okta Authentication" style="margin:15px 0px; border:1px solid black"/>
         <img src="/images/zeppelinnotebook.png" title="Import Zepplin Notebook" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Download an existing Zeppelin Notebook (LF-EMR-Zeppelin.json) from your S3 bucket (bucket name can be found in CloudFormation Stack Output, <b>lf-notebooks-bucket-accountId</b>) into the local computer.<img src="/images/emr-zeppelinnotebookins3.png" title="Download Zeppelin Notebook" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Upload the same file into Zeppelin.<img src="/images/ImportZeppelinNotebook.png" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Once imported, Double click on Notebook you can execute the queries one by one to see the AWS Lake Formation granular-level access control by selecting the cell and clicking on the Run button.<img src="/images/zeppelinnotebook2.png" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Go back to LakeFormation Console and provide <b>SELECT</b> permission to the Auth0 user on the tpc.dl_tpc_item table and re-execute one of the queries which failed with <b>AccessDeniedException</b> and verify if the user now has access.
    </ol>
</div>