+++
title = "Generate Streaming Data"
chapter = true
weight = 6033
+++

<center><h3>Generate Streaming Data</h3></center>

<div style="text-align: justify">
   
 
  In this lab, you will generate real time data using the Kinesis Data Generator tool configured previously. <br><br>
    

    <ol>
        <li> Go Back to the Kinesis Generator Console and use the username: <i><b>kinesisgen</i></b> and the password: <i><b>kinesisgen1</i></b> 
            <img src="/images/kingen7.png" style="margin:15px 0px; border:1px solid black"/></li>
            
    <li>Select the following options:
            <img src="/images/kg1.png" style="margin:15px 0px; border:1px solid black"/></li> 
            
    <li>Go to the bottom part of the page and define the structure of our simulated data using the parametrized template. Copy and paste it to the <i><b>Template1</i></b> tab. Template to use: 
           <xmp>{
    "productName" : "{{commerce.productName}}",
    "color" : "{{commerce.color}}",
    "department" : "{{commerce.department}}",
    "product" : "{{commerce.product}}",
    "imageUrl": "{{image.imageUrl}}",
    "dateSoldSince": "{{date.past}}",
    "dateSoldUntil": "{{date.future}}",
    "price": {{random.number(
        {
            "min":10,
            "max":150
        }
    )}},
    "campaign": "{{random.arrayElement(
        ["BlackFriday","10Percent","NONE"]
    )}}"
}</xmp>
            <img src="/images/kg2.png" style="margin:15px 0px; border:1px solid black"/><br><br>
            
            <b>Hint:</b> KDG makes use of an open-source toolkit called Faker.js (available in <a href="https://github.com/marak/Faker.js/ ">GitHub:</a> ). You can customize the template as you wish. Check Faker.js documentation for details.<br></br>
            
            </li> 
            
    <li>Click on <b>Send Data</b> Button<br><br></li> 
    
    
    <li>You will see a message similar to this::
            <img src="../../images/kg3.png" style="margin:15px 0px; border:1px solid black"/><br>
            
            <b>Hint:</b> Don’t stop sending events from KDG. Let it run while you are working on the other labs.<br><br> 
            </li>  
            
      <li>To verify that the Data Stream is working go back to the <b>Kinesis Firehose</b> console and select <b><i>lf-kinesis-fh</b></i>
            <img src="../../images/firehose16.png" style="margin:15px 0px; border:1px solid black"/></li>
            
    <li>Select the <b><i>Monitoring</b></i> tab and wait 3 minutes and you will see how the metrics start to change, if you can see it, you have successfully created a Kinesis firehose data stream, and are ready to add this data to Lake Formation. Please proceed to the next lab
            <img src="../../images/firehose17.png" style="margin:15px 0px; border:1px solid black"/></li>                                             
                           
    </ol>
 </div>
 
