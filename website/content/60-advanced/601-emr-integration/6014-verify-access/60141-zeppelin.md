+++
title = "Zeppelin"
chapter = true
weight = 60111
autoNav = true
+++

<center><h3>Zeppelin</h3></center>

<div>

Apache Zeppelin is integrated with Lake Formation, and can be used once an EMR cluster integrated with Lake Formation has been created.
In order to access the Zeppelin notebook application, you must first ensure that your cluster’s EC2 master security group is configured to allow access to the Proxy Agent (port 8442) from your desktop.

<br/><br/>
Finish the following steps in order to access the Zeppelin notebook and execute queries. 

<ol>
      
   <li> <b>Note:</b> If you already added port <b>8442</b> to master security group in previous chapter then you can skip steps 2 to 4 and directly start from step 5. </li>
      <li> On the Amazon EMR Console click on Clusters and select the cluster which got created through CloudFormation and click on View Details  </li>
       <li> Click on <b>Security groups for Master</b> link </li>
       <img src="/images/masternode-securith-group.png" title="Master Node Security" style="margin:15px 0px; border:1px solid black"/>
       <li> Select <b>ElasticMapReduce-master</b> security group. Under Inbound tab click on Edit and Add New Inbound Rule to allow traffic ( Type: Custom TPC) from your computer IP on port <b>8442</b> and click <b>Save</b> </li> 
       <img src="/images/1mastersecuritygroup8442.png" title="Add Rule" style="margin:15px 0px; border:1px solid black"/>
        <img src="/images/2mastersecuritygroup8442.png" title="Add Rule" style="margin:15px 0px; border:1px solid black"/>
       <li>To access Apache Zeppelin, grap the <b>EMRMasterNodeDNS</b> value from CloudFormation stack output. Using your browser, navigate to https://<b>EMRMasterNodeDNS</b>:8442/gateway/default/zeppelin/. Ensure the URL includes the trailing slash at the end </li> 
       <li>Once the Proxy Agent’s certificate is accepted, your browser redirects you to your Identity Provider (IdP) to authenticate. Once authenticated, you will be redirected to Zeppelin.</li> 
       <li>Download an existing Zeppelin Notebook ( LF-EMR-Zeppelin.json  ) from your S3 bucket (bucket name can be found in CloudFormation Stack Output, <b>lf-notebooks-bucket-accountId </b> ) into local computer.</li> 
        <img src="/images/emr-zeppelinnotebookins3.png" title="Download Zeppelin Notebook" style="margin:15px 0px; border:1px solid black"/>
        <li>Upload the same file into Zeppelin</li>    
        <img src="/images/ImportZeppelinNotebook.png" title="Import Zepplin Notebook" style="margin:15px 0px; border:1px solid black"/>
       <li>Once imported, Double click on Notebook you can execute the queries one by one to see the AWS Lake Formation granualr column level access control by selecting the cell and clicking on Run button.</li>
       <img src="/images/zeppelinnotebook.png" title="Import Zepplin Notebook" style="margin:15px 0px; border:1px solid black"/>    
       <br/>
   <li> Go back to LakeFormation Console and provide <b>SELECT</b> permission to the Auth0 user on the tpc.dl_tpc_item table and re-excute one of the query which failed with <b>AccessDeniedException</b> and verify if the user now has access. 
             
                             
 </ol>    
 
 <br/>
        
      

</div>