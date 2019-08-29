+++
title = "Query Data With Amazon Athena - Business Analyst"
chapter = true
weight = 40162
+++

<div style="text-align: justify">

   Login to your AWS account as the user <b>business analyst</b>. Let us make sure this user can run queries from Athena console on all tables except the PII data in customer table.
  <ol>

    <li> From the AWS Management console, search for <b>Amazon Athena</b> service <img
            src="/images/Query-AthenaService-search.png" style="margin:15px 0px; border:1px solid black"/>
    </li>
    <li> Make sure you are logged in as a business-analyst user<img src="/images/business-analyst-view.png" style="margin:15px 0px; border:1px solid black"/>
    </li>

    <li> Locate and expand the <b>tpc_customer</b> table on the left hand side of the screen. Notice how the table does not show any PII data for the customer table</li><img src="/images/business-analyst-noPII.png" style="margin:15px 0px; border:1px solid black"/>

    <li> On the top left hand side of the screen, select <b>Saved Queries</b> and choose a query named <b>BusinessAnalyst-Query</b> <img src="/images/business-analyst-queries.png" style="margin:15px 0px; border:1px solid black"/>

    <li> Run each query one at a time. You will notice the results appear within few seconds after you click on <b>Run Query</b> for the first 2 queries <img
            src="/images/business-analyst-query-success.png" style="margin:15px 0px; border:1px solid black"/>
    <li> The last query tries to access the PII data and as expected the business analyst user will get an error message </li> <img src="/images/business-analyst-query-failure.png" style="margin:15px 0px; border:1px solid black"/>

    <li> Proceed to test the data access permissions for a <b>campaign-manager</b> persona.


</ol>



</div>
