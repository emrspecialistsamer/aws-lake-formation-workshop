+++
title = "Query Data With Amazon Athena as a Developer"
chapter = true
weight = 40161
+++

<div style="text-align: justify">
  As you may recall, a developer only has access to web_page and web_sales tables. Login to your AWS account as the user <b>developer</b>. Let us make sure a developer run queries from Athena console on those tables and nothing else.
  <ol>
    <li>From the AWS Management console, search for <b>Amazon Athena</b> service <img src="/images/Query-AthenaService-search.png" style="margin:15px 0px; border:1px solid black"/>
    </li>
    <li>Make sure you are logged in as a developer<img src="/images/Athena-developer-view.png" style="margin:15px 0px; border:1px solid black"/></li>
    <li>As you my have noticed, a developer can only see two tables <b>web_page</b> and <b>web_sales</b>.
    <li>On the top left hand side of the screen, select <b>Saved Queries</b> and choose a query named <b>LakeFormation_Dev_Query</b> <img src="/images/Athena-Dev-Saved-Query.png" style="margin:15px 0px; border:1px solid black"/></li>
    <li>Run each query one at a time. You will notice the results appear within few seconds after you click on <b>Run Query</b> for the first 3 queries <img src="/images/Athena-Dev-Query-Success.png" style="margin:15px 0px; border:1px solid black"/></li>
    <li>Now run the last query. Since a developer does not have access to any other table, querying item table produces a insufficient privileges message as shown in the screenshot <img src="/images/Athena-Dev-Query-Failure.png" style="margin:15px 0px; border:1px solid black"/></li>
    <li> Let's check out the data permissions for <b>business-analyst</b> and <b>campaign-manager</b> users.</li>
  </ol>
</div>