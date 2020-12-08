+++
title = "As a Campaign Manager"
chapter = true
weight = 5063
+++

<div style="text-align: justify">
  Login to your AWS account as the user <b>lf-campaign-manager</b>. Proceed to the Athena console.
  <ol>
    <li>From the AWS Management console, search for <b>Amazon Athena</b> service <img src="/images/Query-AthenaService-search.png" style="margin:15px 0px; border:1px solid black"/>
    </li>
    <li>Make sure you are logged in as a lf-campaign-manager user<img src="/images/campaign-manager-view.png" style="margin:15px 0px; border:1px solid black"/>
    </li>
    <li>Locate and expand the table section on the left hand side of the screen. Notice that a campaign manager has access to all tables except <b>dl_tpc_web_page</b></li>
    <li>On the top left hand side of the screen, select <b>Saved Queries</b> and choose a query named <b>LF-CampaignManager-Query</b> <img src="/images/campaign-manager-queries.png" style="margin:15px 0px; border:1px solid black"/></li>
    <li>Run each query one at a time, highlight(select) each of the entire statement on the Athena console and then click on the <b>Run query</b> button. You will notice the results appear within few seconds: <img src="/images/campaign-manager-query-success.png" style="margin:15px 0px; border:1px solid black"/></li>
    <li>As expected, the second query throws an error as table <b>dl_tpc_web_page</b> is not accessible to a campaign manager<img src="/images/campaign-manager-query-failure.png" style="margin:15px 0px; border:1px solid black"/></li>
  </ol>
</div>