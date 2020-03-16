+++
title = "EMR Notebook"
chapter = true
weight = 60142
autoNav = true
+++

<center><h3>Amazon EMR Notebook</h3></center>

<div>
EMR notebooks can be created using the Amazon EMR console and used with an existing Amazon EMR cluster integrated with Lake Formation.

In order to access the notebook application, you must first ensure that your cluster’s EC2 master security group is configured to allow access to the Proxy Agent (port 8442) from your desktop.

<ol>
      <li> <b>Note:</b> If you already added port <b>8442</b> to master security group in previous chapter then you can skip steps 2 to 4 and directly start from step 5. </li>
      <li> On the Amazon EMR Console click on Clusters and select the cluster which got created through CloudFormation and click on View Details  </li>
      <li> Click on <b>Security groups for Master</b> link </li>
      <img src="/images/masternode-securith-group.png" title="Master Node Security" style="margin:15px 0px; border:1px solid black"/>
      <li> Select <b>ElasticMapReduce-master</b> security group. Under Inbound tab click on Edit and Add New Inbound Rule to allow traffic ( Type: Custom TPC) from your computer IP on port <b>8442</b> (Make sure you are not on your VPN) and click <b>Save</b> </li> 
       <br/> <b>Note:</b>Please Turn off your VPN, sometimes high levels ports are blocked by VPN.
      <img src="/images/1mastersecuritygroup8442.png" title="Master Security Group" style="margin:15px 0px; border:1px solid black"/>
      <img src="/images/2mastersecuritygroup8442.png" title="Add Rule" style="margin:15px 0px; border:1px solid black"/>
      <li>To create an EMR notebook </li>
      <li>Open the Amazon EMR console at https://console.aws.amazon.com/elasticmapreduce/.</li>
      <li>Choose Notebooks, Create notebook.</li>
      <img src="/images/1create-emr-notebook.png" title="Create Notebook" style="margin:15px 0px; border:1px solid black"/>
      <li>Enter a Notebook name and an optional Notebook description.</li>
      <img src="/images/3create-notebook.png" title="Notebook Name" style="margin:15px 0px; border:1px solid black"/>
      <li>Select Choose an existing cluster and click on <b>Choose</b>.</li>
       <img src="/images/2choose-emr-cluster.png" title="Choose the Cluster" style="margin:15px 0px; border:1px solid black"/>
      <li>Select an existing EMR cluster integrated with Lake Formation and Choose cluster.</li>
      <li>Select Create notebook to create the notebook. Notebook will get created and wait for it go <b>Ready</b> state</li>
      <img src="/images/4notebook-in-readystatus.png" title="Ready State" style="margin:15px 0px; border:1px solid black"/>
      <li>Clear the browser cache/cookies as your previous login into IdP account is still in the session <b>OR</b> Open in Incognito mode if you are using Chrome. </li>
      <li>Once Notebook in Ready state, Click <b>Open In Jupyter</b> or <b>JupyterLab</b>, You will be redirected to the Proxy Agent on the Amazon EMR cluster. Once you’ve accepted the Proxy Agent’s certificate, your browser will redirect you to your Identity Provider (IdP) to authenticate. Once authenticated with user <b> aws-lfemr-developer@somecompany.com</b> and password you provided, you will be redirected to the EMR notebook </li>
      
      <br/> <b>Note:</b> In case of Okta, you have to choose a forgot password question for first time. 
      <br/> <b>Note:</b> Sometimes Auth0/Okta IPs may be blocked by your VPN, so make sure to turn off VPN.
            
      <img src="/images/okta-login.png" title="Okta Authentication" style="margin:15px 0px; border:1px solid black"/>
      <img src="/images/auth0-authenticate.png" title="Auth0 Authentication" style="margin:15px 0px; border:1px solid black"/>
             
      <li>Download an existing EMR Notebook ( LF-EMR-Jupyter.ipynb file ) from your S3 bucket (bucket name can be found in CloudFormation Stack Output, <b>lf-notebooks-bucket-accountId </b> ) into local computer.</li> 
       <img src="/images/emr-jupyternotebookins3.png" title="Download Jupyter Notebook" style="margin:15px 0px; border:1px solid black"/>
       <li>Upload the same file into Jupyter</li>      
       <img src="/images/lf-emr-uploadjupyternotebook.png" title="Import Jupyter Notebook" style="margin:15px 0px; border:1px solid black"/>
       <li>Once imported you can execute the queries one by one to see the LakeFormation granular column level access control.</li>
       <img src="/images/lf-emr-jupyterlab.png" title="Import Jupyter Notebook" style="margin:15px 0px; border:1px solid black"/>
       <br/>
       <li>Go back to LakeFormation Console and provide <b>SELECT</b> permission to the Auth0 user on the tpc.dl_tpc_item table and re-excute one of the query which failed with <b>AccessDeniedException</b> and verify if the user now has access. </li>
     
              
 </ol>      
       
                   
</div>

