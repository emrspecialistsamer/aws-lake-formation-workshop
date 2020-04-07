+++
title = "EMR Notebooks"
chapter = true
weight = 60142
autoNav = true
+++

<center><h3>EMR Notebooks</h3></center>

<div style="text-align: justify">
    Follow these steps to create Amazon EMR Notebook and execute queries through notebook to explore different access patterns:
    <ol>
      <li>If you already updated your EMR security group, you can move to step #5.</li>
        <li>On the Amazon EMR console click on <b>Clusters</b> and select the cluster <b>LF-EMRCluster</b>, and then click on <b>View Details</b>.</li>
        <li>Click on <b>Security groups for Master</b> link.<img src="/images/masternode-securith-group.png" title="Master Node Security" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select <b>ElasticMapReduce-master</b> security group. Under <b>Inbound</b> tab click on <b>Edit inbound rules</b> to allow traffic (type: Custom TPC) from your computer IP to port <b>8442</b> and click <b>Save</b> .<img src="/images/1mastersecuritygroup8442.png" title="Add Rule" style="margin:15px 0px; border:1px solid black"/>
            <img src="/images/2mastersecuritygroup8442.png" title="Add Rule" style="margin:15px 0px; border:1px solid black"/>
            <b>Note:</b> Please Turn off your VPN, sometimes high levels ports are blocked by VPN.</li>
        <li>Clear the browser cache/cookies as your previous login into IdP account is still in the session <b>OR</b> open in Incognito mode if you are using Google Chrome.</li>
      <li>To create an EMR notebook, open the Amazon EMR console. Choose Notebooks and click on <b>Create notebook</b> button.<img src="/images/1create-emr-notebook.png" title="Create Notebook" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Enter a Notebook name <b>LF-Notebook</b> and an optional description. Select the Amazon S3 notebook path under <b>Notebook location</b> section.<img src="/images/3create-notebook.png" title="Notebook Name" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select <b>Choose an existing cluster</b> and click on <b>Choose</b> button. Select the EMR cluster <b>LF-EMRCluster</b>, which is created by the CloudFormation template.<img src="/images/2choose-emr-cluster.png" title="Choose the Cluster" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Review all the information and finish up the creation process by clicking on the <b>Create notebook</b> button. Notebook will get created and wait for the <b>Ready</b> state.<img src="/images/4notebook-in-readystatus.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Clear the browser cache/cookies as your previous login into IdP account is still in the session <b>OR</b> open in Incognito mode if you are using Google Chrome.</li>
        <li>Once notebook is in ready state, click on either <b>Open In Jupyter</b> or <b>Open in JupyterLab</b> button.<img src="/images/notebookjup1.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>You will be redirected to the Proxy Agent on the Amazon EMR cluster. Once the Proxy Agent’s certificate is accepted, your browser redirects you to your Identity Provider (IdP) login page to authenticate.
        <div class="row">
            <div class="column"><img src="/images/auth0-authenticate.png" style="margin:15px 0px; border:1px solid black"/></div>
            <div class="column"><img src="/images/okta-login.png" style="margin:15px 0px; border:1px solid black"/></div>
        </div>
        <b>Note:</b> In the case of Okta, you have to choose the forgot password question for the first time. Sometimes Auth0/Okta IPs may be blocked by your VPN, so make sure to turn off VPN.</li>
       <li>Once authenticated with user <b>emr-developer@somecompany.com</b> and password you provided, you will be redirected to Jupyter notebook. A notebook for this exercise is already loaded to your Jupyter. Click on the notebook named -  <b>LF-Notebook</b>.<img src="/images/notebookjup2.png" style="margin:15px 0px; border:1px solid black"/> </li>
        <li>You can execute the queries one by one to see different AWS Lake Formation granular-level access patterns.<img src="/images/lf-emr-jupyterlab.png" title="Import Jupyter Notebook" style="margin:15px 0px; border:1px solid black"/></li>
        <li>One query at the end of the notebook is expected to fail due to limited data permission. Now, go back to the AWS Lake Formation Console (on a different browser's tab) and grant <b>SELECT</b> permission to the Auth0 user on the <b>tpc.dl_tpc_item</b> table. Go back to your notebook and re-execute the query which failed with <b>AccessDeniedException</b> error and validate the user's access.</li>
    </ol>
</div>

