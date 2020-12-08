+++
title = "Generate Streaming Data"
chapter = true
weight = 6023
+++

<center><h3>Generate Streaming Data</h3></center>

<div style="text-align: justify">
    In this section, you will generate real-time data using the Amazon Kinesis Data Generator tool configured previously.
    <ol>
        <li> Go Back to the console and use the username: <i><b>kinesisgen</b></i> and the password: <i><b>kinesisgen1</b></i>
            <img src="/images/kingen7.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select the following options:
            <img src="/images/kg1.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Go to the bottom part of the page and define the structure of our simulated data using the parametrized template. Copy and paste it to the <i><b>Template1</i></b> tab. Template to use:{{< highlight json >}}{
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
}{{< / highlight >}}
            <img src="/images/kg2.png" style="margin:15px 0px; border:1px solid black"/>
            KDG makes use of an open-source toolkit called Faker.js (available in <a href="https://github.com/marak/Faker.js/ ">GitHub:</a> ). You can customize the template as you wish. Check Faker.js documentation for details.</li>
        <li>Click on the <b>Send Data</b> button.</li>
        <li>You will see a message similar to this::
            <img src="../../images/kg3.png" style="margin:15px 0px; border:1px solid black"/>
            <b>Hint:</b> Don’t stop sending events from KDG. Let it run while you are working on the other sections.</li>
        <li>To verify that the Data Stream is working go back to the <b>Kinesis Firehose</b> console and select <b><i>lf-kinesis-fh</i></b>.
            <img src="../../images/firehose16.png" style="margin:15px 0px; border:1px solid black"/></li>
        <li>Select the <b><i>Monitoring</i></b> tab and wait 3 minutes and you will see how the metrics start to change, if you can see it, you have successfully created a Kinesis firehose data stream, and are ready to add this data to Lake Formation. Please proceed to the next lab.
            <img src="../../images/firehose17.png" style="margin:15px 0px; border:1px solid black"/></li>
    </ol>
    In the next section, you are going to create a table for the real time data.
 </div>
 
