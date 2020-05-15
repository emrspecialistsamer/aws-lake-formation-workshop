+++
title = "Development Endpoint"
chapter = true
weight = 4023
+++

<div style="text-align: justify">
    You can use Glue Development Endpoint to iteratively develop and test your extract, transform, and load (ETL) scripts. You can create, edit, and delete development endpoints using the AWS Glue console or API. When you create a development endpoint, you provide configuration values to provision the development environment. These values tell AWS Glue how to set up the network so that you can access the endpoint securely and the endpoint can access your data stores.
    <br/><br/>You can then create a notebook that connects to the endpoint, and use your notebook to the author and test your ETL script. When you're satisfied with the results of your development process, you can create an ETL job that runs your script. With this process, you can add functions and debug your scripts in an interactive manner.
    <br/><br/>In this exercise, you will learn how to create Glue development endpoint and how to run or debug scripts there.
    <ol>
        <li>Go to Glue console and click on <b>Dev endpoints</b> from the left and then click on <b>Add endpoint</b><img src="/images/devend1.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Give a name to your Glue endpoint <b>glue-dev</b> and select the same IAM role that you used in other exercises and click <b>Next</b>.<img src="/images/devend2.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>In this section, you provide your network configuration for the Glue endpoint. You already provided network configuration while creating Glue connection, you are going to use it. The Glue will capture the configuration from the connection and will towards your endpoint. Once you select <b>mysql-connector</b>, click <b>Next</b> to proceed.<img src="/images/devend3.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>This section is optional. Sometimes, you may want to connect to the notebook from your laptop or local notebook client, in that case, you provide a public key, based on that public key, you get access to the remote notebook instance. Leave this option and proceed next.<img src="/images/devend4.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Review all your configuration and click <b>Finish</b> to create your Glue development endpoint.<img src="/images/devend5.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Glue endpoint creation process may take 4-8 minutes, you will see the status on the Glue endpoint console.<img src="/images/devend6.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Once it's completed, the status will change to <b>READY</b>.<img src="/images/devend7.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Now development endpoint is ready, you need an interface and interpreter to communicate and run your code. For that, you have two options - (a) Zeppelin notebook, and (b) SageMaker notebook. For this exercise, you will use SageMaker notebook. Click the development endpoint and select <b>Create SageMaker notebook</b> from the <b>Action</b> dropdown.<img src="/images/devend8.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Now configure your notebook, give a name for your notebook and create a new IAM role for this notebook.<img src="/images/devend9.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Glue will automatically pick up the rest of the configuration from your Glue endpoint. Leave the rest of the options unchanged and click on <b>Create notebook</b>.<img src="/images/devend10.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>It will take a few minutes to start the SageMaker notebook. Once it's ready, the status will change from <b>Starting</b> to <b>Running</b>. Once it's ready, select the notebook instance from the list and click on <b>Open notebook</b>.<img src="/images/devend11.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>The default SageMaker notebook comes with a few Glue Examples. In this exercise, you will create a new notebook to explore the data that you crawled in the previous exercise.<img src="/images/devend12.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Click <b>New</b> on the right corner and select Sparkmagic (PySpark). It will open a new notebook, give a name for your notebook.<img src="/images/devend13.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>In the new notebook, you will create two sections - section (1) will initialize Spark and Glue context and section (2) to query NYC taxi data using an existing catalog.<img src="/images/devend14.png" style="margin:15px 0px; border:1px solid black"/><img src="/images/devend15.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>You can download the above sample script from the following attachment section.</li>
        <li>By running a few PySpark blocks, now you learn how to use Glue endpoint to develop your Glue ETL scripts and debug them interactively.</li>
    </ol>
    {{%attachments style="blue" /%}}
</div>