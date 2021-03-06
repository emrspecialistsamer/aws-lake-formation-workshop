+++
title = "Apache Zeppelin"
chapter = false
weight = 60141
autoNav = true
+++

<div style="text-align: justify">
   To access the Apache Zeppelin's notebook, you must first ensure that your cluster’s master security group is configured to allow access to the Proxy Agent (port 8442) from your desktop.
   <br/><br/>Follow these steps to access the Zeppelin notebook and execute queries on notebook to explore different access scenarios:
   <ol>
      <li>On the Amazon EMR console click on <b>Clusters</b> and select the cluster <b>LF-EMRCluster</b>, and then click on <b>View Details</b>.</li>
      <li>Click on <b>Security groups for Master</b> link.<img src="/images/masternode-securith-group.png" title="Master Node Security" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Select <b>ElasticMapReduce-master</b> security group. Under <b>Inbound</b> tab click on <b>Edit inbound rules</b> to allow traffic (type: Custom TPC) from your computer IP to port <b>8442</b> and click <b>Save</b> .<img src="/images/1mastersecuritygroup8442.png" title="Add Rule" style="margin:15px 0px; border:1px solid black"/>
         <img src="/images/2mastersecuritygroup8442.png" title="Add Rule" style="margin:15px 0px; border:1px solid black"/>
      {{% notice tip %}}Please Turn off your VPN, sometimes high levels ports are blocked by VPN.
      {{% /notice %}}
      <li>Clear the browser cache/cookies as your previous login into IdP account is still in the session <b>OR</b> open in Incognito mode if you are using Google Chrome.</li>
      <li>To access Apache Zeppelin, copy the <b>EMRMasterNodeDNS</b> value from CloudFormation stack output. Using your browser, navigate to the following URL. Ensure the URL includes the trailing slash at the end and updated EMRMasterNodeDNS address.
         {{< highlight bash >}}https://EMRMasterNodeDNS:8442/gateway/default/zeppelin/ {{< /highlight >}}</li>
      <li>Once the Proxy Agent’s certificate is accepted, your browser redirects you to your Identity Provider (IdP) login page to authenticate.
         <ul>
            <li>For Auth0/Okta use <b>emr-developer@somecompany.com</b> and password you provided to authenticate.</li>
            <div class="row">
               <div class="column"><img src="/images/auth0-authenticate.png" style="margin:15px 0px; border:1px solid black"/></div>
               <div class="column"><img src="/images/okta-login.png" style="margin:15px 0px; border:1px solid black"/></div>
            </div>
            <li>For AD FS use <b>emr-developer@hadoop.com</b> and password (Password1!) to authenticate.<img src="/images/adfs-login.png" height="500" width="450" style="margin:15px; border:1px solid black"/></li>
         </ul>
         {{% notice tip %}}In the case of <b>Okta</b>, you have to choose the forgot password question for the first time. It may ask you to provide a <i>forgot password question.</i>
         {{% /notice %}}
      </li>
       <li>Once authenticated, you will be redirected to Zeppelin.<img src="/images/zeppelinnotebook.png" style="margin:15px 0px; border:1px solid black"/></li>
      <li>A notebook for this exercise is already loaded to your Zeppelin. Click on the notebook named -  <b>LakeFormation-EMR-Notebook</b>. Now, from the notebook, you can execute the queries one by one to see different AWS Lake Formation granular-level access patterns.<img src="/images/zeppelin-notebook-sel.png" style="margin:15px 0px; border:1px solid black"/><img src="/images/zeppelinnotebook2.png" style="margin:15px 0px; border:1px solid black"/></li>
      <li>One query at the end of the notebook is expected to fail due to limited data permission. Now, go back to the AWS Lake Formation Console (on a different browser's tab) and grant <b>SELECT</b> permission to the IdP user on the <b>tpc.dl_tpc_item</b> table. Go back to your notebook and re-execute the query which failed with <b>AccessDeniedException</b> error and validate the user's access.</li>
    </ol>
</div>