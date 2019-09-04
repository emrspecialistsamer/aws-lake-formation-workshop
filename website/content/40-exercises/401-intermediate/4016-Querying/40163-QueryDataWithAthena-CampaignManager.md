+++
title = "Query Data With Amazon Athena as a Campaign Manager"
chapter = true
weight = 40163
+++

<div style="text-align: justify">

  Login to your AWS account as the user <b>campaign-manager</b>. Proceed to the Athena console.
  <ol>

    <li> From the AWS Management console, search for <b>Amazon Athena</b> service <img
            src="/images/Query-AthenaService-search.png" style="margin:15px 0px; border:1px solid black"/>
    </li>
    <li> Make sure you are logged in as a business-analyst user<img src="/images/business-analyst-view.png" style="margin:15px 0px; border:1px solid black"/>
    </li>

    <li> Locate and expand the table section on the left hand side of the screen. Notice that a campaign manager has access to all tables except <b>web_page</b></li>

    <li> On the top left hand side of the screen, select <b>Saved Queries</b> and choose a query named <b>CampaignManager-Query</b> <img src="/images/campaign-manager-queries.png" style="margin:15px 0px; border:1px solid black"/>

    <li> Run each query one at a time. You will notice the results appear within few seconds after you click on <b>Run Query</b> for the first query <img
            src="/images/campaign-manager-query-success.png" style="margin:15px 0px; border:1px solid black"/>
    <li> As expected, the second query throws an error as table <b>web_page</b> is not accessible to a campaign manager</li> <img src="/images/campaign-manager-query-failure.png" style="margin:15px 0px; border:1px solid black"/>


</ol>



</div>
