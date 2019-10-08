+++
title = "As a Business Analyst"
chapter = true
weight = 40162
+++

<div style="text-align: justify">
   Login to your AWS account as the user <b>lf-business-analyst</b>. Let us make sure this user can run queries from Athena console on all tables except the PII data in customer table.
  <ol>
    <li>From the AWS Management console, search for <b>Amazon Athena</b> service <img src="/images/Query-AthenaService-search.png" style="margin:15px 0px; border:1px solid black"/>
    </li>
    <li>Make sure you are logged in as a lf-business-analyst user<img src="/images/business-analyst-view.png" style="margin:15px 0px; border:1px solid black"/>
    </li>
    <li>Locate and expand the <b>dl_tpc_customer</b> table on the left hand side of the screen. Notice how the table does not show any PII data for the customer table</li><img src="/images/business-analyst-noPII.png" style="margin:15px 0px; border:1px solid black"/>
    <li>On the top left hand side of the screen, select <b>Saved Queries</b> and choose a query named <b>LF-BusinessAnalyst-Query</b> <img src="/images/business-analyst-queries.png" style="margin:15px 0px; border:1px solid black"/>
    </li>
    <li>Run each query one at a time, highlight(select) each of the entire statement on the Athena console and then click on the <b>Run query</b> button. You will notice the results appear within few seconds:<img src="/images/business-analyst-query-success.png" style="margin:15px 0px; border:1px solid black"/>
    </li>
    <li>The last query tries to access the PII data and as expected the business analyst user will get an error message<img src="/images/business-analyst-query-failure.png" style="margin:15px 0px; border:1px solid black"/></li>
    <li>Proceed to test the data access permissions for a <b>lf-campaign-manager</b> persona.</li>
  </ol>
</div>
