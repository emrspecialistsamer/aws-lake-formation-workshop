+++
title = "EMR Notebook"
chapter = true
weight = 60142
autoNav = true
+++

<center><h3>Amazon EMR Notebook</h3></center>

<div style="text-align: justify">
    EMR notebooks can be created using the Amazon EMR console and used with an existing Amazon EMR cluster integrated with Lake Formation. To access the notebook application, you must first ensure that your cluster’s EC2 master security group is configured to allow access to the Proxy Agent (port 8442) from your desktop.
    <ol>
      <li>If you already added port <b>8442</b> to the EMR security group from the previous chapter then you can skip steps 2 to 4.</li>
      <li>On the Amazon EMR Console click on Clusters and select the cluster which got created through CloudFormation and click on View Details  </li>
      <li>Click on <b>Security groups for Master</b> link.<img src="/images/masternode-securith-group.png" title="Master Node Security" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Select <b>ElasticMapReduce-master</b> security group. Under Inbound tab click on Edit and Add New Inbound Rule to allow traffic ( Type: Custom TPC) from your computer IP on port <b>8442</b> (Make sure you are not on your VPN) and click <b>Save</b>.<img src="/images/1mastersecuritygroup8442.png" style="margin:15px 0px; border:1px solid black"/><img src="/images/2mastersecuritygroup8442.png" style="margin:15px 0px; border:1px solid black"/><b>Note:</b>Please Turn off your VPN, sometimes high levels ports are blocked by VPN.</li>
      <li>To create an EMR notebook, open the Amazon EMR console at https://console.aws.amazon.com/elasticmapreduce/.</li>
        <li>Choose Notebooks and click on <b>Create notebook</b> button.<img src="/images/1create-emr-notebook.png" title="Create Notebook" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Enter a Notebook name and an optional Notebook description.<img src="/images/3create-notebook.png" title="Notebook Name" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select <b>Choose an existing cluster</b> and click on <b>Choose</b>. Select the EMR cluster <b>LF-EMRCluster</b>, which is created by the CloudFormation template.<img src="/images/2choose-emr-cluster.png" title="Choose the Cluster" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Review all the information and finish up the creation process by clicking on the <b>Create notebook</b>. Notebook will get created and wait for the <b>Ready</b> state.<img src="/images/4notebook-in-readystatus.png" title="Ready State" style="margin:15px 0px; border:1px solid black"/></li>
      <li>Clear the browser cache/cookies as your previous login into IdP account is still in the session <b>OR</b> open in Incognito mode if you are using Google Chrome.</li>
      <li>Once notebook is in ready state, click on <b>Open In Jupyter</b> or <b>JupyterLab</b>. You will be redirected to the Proxy Agent on the Amazon EMR cluster. Once you’ve accepted the Proxy Agent’s certificate, your browser will redirect you to your Identity Provider (IdP) to authenticate. Once authenticated with user <b> emr-developer@somecompany.com</b> and password you provided, you will be redirected to the EMR notebook.<img src="/images/okta-login.png" title="Okta Authentication" style="margin:15px 0px; border:1px solid black"/><img src="/images/auth0-authenticate.png" title="Auth0 Authentication" style="margin:15px 0px; border:1px solid black"/><br/> <b>Note:</b> In the case of Okta, you have to choose the forgot password question for the first time. Sometimes Auth0/Okta IPs may be blocked by your VPN, so make sure to turn off VPN.</li>
      <li>Download an existing EMR Notebook (LF-EMR-Jupyter.ipynb file) from your S3 bucket (bucket name can be found in CloudFormation Stack Output, <b>lf-notebooks-bucket-accountId </b>) into the local computer.<img src="/images/emr-jupyternotebookins3.png" title="Download Jupyter Notebook" style="margin:15px 0px; border:1px solid black"/></li>
       <li>Upload the same file into Jupyter.<img src="/images/lf-emr-uploadjupyternotebook.png" title="Import Jupyter Notebook" style="margin:15px 0px; border:1px solid black"/></li>
       <li>Once imported you can execute the queries one by one to see the LakeFormation granular-level access control.<img src="/images/lf-emr-jupyterlab.png" title="Import Jupyter Notebook" style="margin:15px 0px; border:1px solid black"/></li>
       <li>Go back to LakeFormation Console and provide <b>SELECT</b> permission to the Auth0 user on the tpc.dl_tpc_item table and re-execute one of the queries which failed with <b>AccessDeniedException</b> and verify if the user now has access. </li>
    </ol>
</div>

