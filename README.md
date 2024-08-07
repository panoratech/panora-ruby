# panora

<div align="left">
    <a href="https://www.speakeasy.com/?utm_source=<no value>&utm_campaign=ruby"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" />
    </a>
</div>


## 🏗 **Welcome to your new SDK!** 🏗

It has been generated successfully based on your OpenAPI spec. However, it is not yet ready for production use. Here are some next steps:
- [ ] 🛠 Make your SDK feel handcrafted by [customizing it](https://www.speakeasy.com/docs/customize-sdks)
- [ ] ♻️ Refine your SDK quickly by iterating locally with the [Speakeasy CLI](https://github.com/speakeasy-api/speakeasy)
- [ ] 🎁 Publish your SDK to package managers by [configuring automatic publishing](https://www.speakeasy.com/docs/advanced-setup/publish-sdks)
- [ ] ✨ When ready to productionize, delete this section from the README

<!-- Start SDK Installation [installation] -->
## SDK Installation

```bash
gem install specific_install
gem specific_install https://github.com/panoratech/panora-ruby 
```
<!-- End SDK Installation [installation] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hello()

if ! res.res.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

### [Panora SDK](docs/sdks/panora/README.md)

* [hello](docs/sdks/panora/README.md#hello)
* [health](docs/sdks/panora/README.md#health)

### [AuthLogin](docs/sdks/authlogin/README.md)

* [sign_in](docs/sdks/authlogin/README.md#sign_in) - Log In

### [Connections](docs/sdks/connections/README.md)

* [get_connections](docs/sdks/connections/README.md#get_connections) - List Connections

### [Webhooks](docs/sdks/webhooks/README.md)

* [list](docs/sdks/webhooks/README.md#list) - List webhooks
* [create](docs/sdks/webhooks/README.md#create) - Create webhook
* [delete](docs/sdks/webhooks/README.md#delete) - Delete Webhook
* [update_status](docs/sdks/webhooks/README.md#update_status) - Update webhook status
* [verify_event](docs/sdks/webhooks/README.md#verify_event) - Verify payload signature of the webhook

### [TicketingTickets](docs/sdks/ticketingtickets/README.md)

* [list](docs/sdks/ticketingtickets/README.md#list) - List  Tickets
* [create](docs/sdks/ticketingtickets/README.md#create) - Create Tickets
* [retrieve](docs/sdks/ticketingtickets/README.md#retrieve) - Retrieve Tickets

### [TicketingUsers](docs/sdks/ticketingusers/README.md)

* [list](docs/sdks/ticketingusers/README.md#list) - List Users
* [retrieve](docs/sdks/ticketingusers/README.md#retrieve) - Retrieve User

### [TicketingAccounts](docs/sdks/ticketingaccounts/README.md)

* [list](docs/sdks/ticketingaccounts/README.md#list) - List  Accounts
* [retrieve](docs/sdks/ticketingaccounts/README.md#retrieve) - Retrieve Accounts

### [TicketingContacts](docs/sdks/ticketingcontacts/README.md)

* [list](docs/sdks/ticketingcontacts/README.md#list) - List Contacts
* [retrieve](docs/sdks/ticketingcontacts/README.md#retrieve) - Retrieve Contact

### [Sync](docs/sdks/sync/README.md)

* [status](docs/sdks/sync/README.md#status) - Retrieve sync status of a certain vertical
* [resync](docs/sdks/sync/README.md#resync) - Resync common objects across a vertical

### [CrmCompanies](docs/sdks/crmcompanies/README.md)

* [list](docs/sdks/crmcompanies/README.md#list) - List Companies
* [create](docs/sdks/crmcompanies/README.md#create) - Create Companies
* [retrieve](docs/sdks/crmcompanies/README.md#retrieve) - Retrieve Companies

### [CrmContacts](docs/sdks/crmcontacts/README.md)

* [list](docs/sdks/crmcontacts/README.md#list) - List CRM Contacts
* [create](docs/sdks/crmcontacts/README.md#create) - Create Contacts
* [retrieve](docs/sdks/crmcontacts/README.md#retrieve) - Retrieve Contacts

### [CrmDeals](docs/sdks/crmdeals/README.md)

* [list](docs/sdks/crmdeals/README.md#list) - List Deals
* [create](docs/sdks/crmdeals/README.md#create) - Create Deals
* [retrieve](docs/sdks/crmdeals/README.md#retrieve) - Retrieve Deals

### [CrmEngagements](docs/sdks/crmengagements/README.md)

* [list](docs/sdks/crmengagements/README.md#list) - List Engagements
* [create](docs/sdks/crmengagements/README.md#create) - Create Engagements
* [retrieve](docs/sdks/crmengagements/README.md#retrieve) - Retrieve Engagements

### [CrmNotes](docs/sdks/crmnotes/README.md)

* [list](docs/sdks/crmnotes/README.md#list) - List Notes
* [create](docs/sdks/crmnotes/README.md#create) - Create Notes
* [retrieve](docs/sdks/crmnotes/README.md#retrieve) - Retrieve Notes

### [CrmStages](docs/sdks/crmstages/README.md)

* [list](docs/sdks/crmstages/README.md#list) - List  Stages
* [retrieve](docs/sdks/crmstages/README.md#retrieve) - Retrieve Stages

### [CrmTasks](docs/sdks/crmtasks/README.md)

* [list](docs/sdks/crmtasks/README.md#list) - List Tasks
* [create](docs/sdks/crmtasks/README.md#create) - Create Tasks
* [retrieve](docs/sdks/crmtasks/README.md#retrieve) - Retrieve Tasks

### [CrmUsers](docs/sdks/crmusers/README.md)

* [list](docs/sdks/crmusers/README.md#list) - List  Users
* [retrieve](docs/sdks/crmusers/README.md#retrieve) - Retrieve Users

### [TicketingCollections](docs/sdks/ticketingcollections/README.md)

* [list](docs/sdks/ticketingcollections/README.md#list) - List Collections
* [retrieve](docs/sdks/ticketingcollections/README.md#retrieve) - Retrieve Collections

### [TicketingComments](docs/sdks/ticketingcomments/README.md)

* [list](docs/sdks/ticketingcomments/README.md#list) - List Comments
* [create](docs/sdks/ticketingcomments/README.md#create) - Create Comments
* [retrieve](docs/sdks/ticketingcomments/README.md#retrieve) - Retrieve Comment

### [TicketingTags](docs/sdks/ticketingtags/README.md)

* [list](docs/sdks/ticketingtags/README.md#list) - List Tags
* [retrieve](docs/sdks/ticketingtags/README.md#retrieve) - Retrieve Tag

### [TicketingTeams](docs/sdks/ticketingteams/README.md)

* [list](docs/sdks/ticketingteams/README.md#list) - List  Teams
* [retrieve](docs/sdks/ticketingteams/README.md#retrieve) - Retrieve Teams

### [LinkedUsers](docs/sdks/linkedusers/README.md)

* [create](docs/sdks/linkedusers/README.md#create) - Create Linked Users
* [list](docs/sdks/linkedusers/README.md#list) - List Linked Users
* [import_batch](docs/sdks/linkedusers/README.md#import_batch) - Add Batch Linked Users
* [retrieve](docs/sdks/linkedusers/README.md#retrieve) - Retrieve Linked Users
* [remote_id](docs/sdks/linkedusers/README.md#remote_id) - Retrieve a Linked User From A Remote Id

### [Projects](docs/sdks/projects/README.md)

* [get_projects](docs/sdks/projects/README.md#get_projects) - Retrieve projects
* [create](docs/sdks/projects/README.md#create) - Create a project

### [FieldMappings](docs/sdks/fieldmappings/README.md)

* [get_field_mapping_values](docs/sdks/fieldmappings/README.md#get_field_mapping_values) - Retrieve field mappings values
* [get_field_mappings_entities](docs/sdks/fieldmappings/README.md#get_field_mappings_entities) - Retrieve field mapping entities
* [get_field_mappings](docs/sdks/fieldmappings/README.md#get_field_mappings) - Retrieve field mappings
* [definitions](docs/sdks/fieldmappings/README.md#definitions) - Define target Field
* [define_custom_field](docs/sdks/fieldmappings/README.md#define_custom_field) - Create Custom Field
* [map](docs/sdks/fieldmappings/README.md#map) - Map Custom Field

### [Events](docs/sdks/events/README.md)

* [get_panora_core_events](docs/sdks/events/README.md#get_panora_core_events) - List Events

### [Passthrough](docs/sdks/passthrough/README.md)

* [request](docs/sdks/passthrough/README.md#request) - Make a passthrough request

### [PassthroughRetryid](docs/sdks/passthroughretryid/README.md)

* [get_retried_request_response](docs/sdks/passthroughretryid/README.md#get_retried_request_response) - Retrieve response of a failed passthrough request due to rate limits

### [HrisBankinfos](docs/sdks/hrisbankinfos/README.md)

* [list](docs/sdks/hrisbankinfos/README.md#list) - List Bank Info
* [retrieve](docs/sdks/hrisbankinfos/README.md#retrieve) - Retrieve Bank Info

### [HrisBenefits](docs/sdks/hrisbenefits/README.md)

* [list](docs/sdks/hrisbenefits/README.md#list) - List Benefits
* [retrieve](docs/sdks/hrisbenefits/README.md#retrieve) - Retrieve Benefit

### [HrisCompanies](docs/sdks/hriscompanies/README.md)

* [list](docs/sdks/hriscompanies/README.md#list) - List Companies
* [retrieve](docs/sdks/hriscompanies/README.md#retrieve) - Retrieve Company

### [HrisDependents](docs/sdks/hrisdependents/README.md)

* [list](docs/sdks/hrisdependents/README.md#list) - List Dependents
* [retrieve](docs/sdks/hrisdependents/README.md#retrieve) - Retrieve Dependent

### [HrisEmployeepayrollruns](docs/sdks/hrisemployeepayrollruns/README.md)

* [list](docs/sdks/hrisemployeepayrollruns/README.md#list) - List Employee Payroll Runs
* [retrieve](docs/sdks/hrisemployeepayrollruns/README.md#retrieve) - Retrieve Employee Payroll Run

### [HrisEmployees](docs/sdks/hrisemployees/README.md)

* [list](docs/sdks/hrisemployees/README.md#list) - List Employees
* [create](docs/sdks/hrisemployees/README.md#create) - Create Employees
* [retrieve](docs/sdks/hrisemployees/README.md#retrieve) - Retrieve Employee

### [HrisEmployerbenefits](docs/sdks/hrisemployerbenefits/README.md)

* [list](docs/sdks/hrisemployerbenefits/README.md#list) - List Employer Benefits
* [retrieve](docs/sdks/hrisemployerbenefits/README.md#retrieve) - Retrieve Employer Benefit

### [HrisEmployments](docs/sdks/hrisemployments/README.md)

* [list](docs/sdks/hrisemployments/README.md#list) - List Employments
* [retrieve](docs/sdks/hrisemployments/README.md#retrieve) - Retrieve Employment

### [HrisGroups](docs/sdks/hrisgroups/README.md)

* [list](docs/sdks/hrisgroups/README.md#list) - List Groups
* [retrieve](docs/sdks/hrisgroups/README.md#retrieve) - Retrieve Group

### [HrisLocations](docs/sdks/hrislocations/README.md)

* [list](docs/sdks/hrislocations/README.md#list) - List Locations
* [retrieve](docs/sdks/hrislocations/README.md#retrieve) - Retrieve Location

### [HrisPaygroups](docs/sdks/hrispaygroups/README.md)

* [list](docs/sdks/hrispaygroups/README.md#list) - List Pay Groups
* [retrieve](docs/sdks/hrispaygroups/README.md#retrieve) - Retrieve Pay Group

### [HrisPayrollruns](docs/sdks/hrispayrollruns/README.md)

* [list](docs/sdks/hrispayrollruns/README.md#list) - List Payroll Runs
* [retrieve](docs/sdks/hrispayrollruns/README.md#retrieve) - Retrieve Payroll Run

### [HrisTimeoffs](docs/sdks/hristimeoffs/README.md)

* [list](docs/sdks/hristimeoffs/README.md#list) - List Time Offs
* [create](docs/sdks/hristimeoffs/README.md#create) - Create Timeoffs
* [retrieve](docs/sdks/hristimeoffs/README.md#retrieve) - Retrieve Time Off

### [HrisTimeoffbalances](docs/sdks/hristimeoffbalances/README.md)

* [list](docs/sdks/hristimeoffbalances/README.md#list) - List  TimeoffBalances
* [retrieve](docs/sdks/hristimeoffbalances/README.md#retrieve) - Retrieve Time off Balances

### [MarketingautomationActions](docs/sdks/marketingautomationactions/README.md)

* [list](docs/sdks/marketingautomationactions/README.md#list) - List Actions
* [create](docs/sdks/marketingautomationactions/README.md#create) - Create Action
* [retrieve](docs/sdks/marketingautomationactions/README.md#retrieve) - Retrieve Actions

### [MarketingautomationAutomations](docs/sdks/marketingautomationautomations/README.md)

* [list](docs/sdks/marketingautomationautomations/README.md#list) - List Automations
* [create](docs/sdks/marketingautomationautomations/README.md#create) - Create Automation
* [retrieve](docs/sdks/marketingautomationautomations/README.md#retrieve) - Retrieve Automation

### [MarketingautomationCampaigns](docs/sdks/marketingautomationcampaigns/README.md)

* [list](docs/sdks/marketingautomationcampaigns/README.md#list) - List Campaigns
* [create](docs/sdks/marketingautomationcampaigns/README.md#create) - Create Campaign
* [retrieve](docs/sdks/marketingautomationcampaigns/README.md#retrieve) - Retrieve Campaign

### [MarketingautomationContacts](docs/sdks/marketingautomationcontacts/README.md)

* [list](docs/sdks/marketingautomationcontacts/README.md#list) - List  Contacts
* [create](docs/sdks/marketingautomationcontacts/README.md#create) - Create Contact
* [retrieve](docs/sdks/marketingautomationcontacts/README.md#retrieve) - Retrieve Contacts

### [MarketingautomationEmails](docs/sdks/marketingautomationemails/README.md)

* [list](docs/sdks/marketingautomationemails/README.md#list) - List Emails
* [retrieve](docs/sdks/marketingautomationemails/README.md#retrieve) - Retrieve Email

### [MarketingautomationEvents](docs/sdks/marketingautomationevents/README.md)

* [list](docs/sdks/marketingautomationevents/README.md#list) - List Events
* [retrieve](docs/sdks/marketingautomationevents/README.md#retrieve) - Retrieve Event

### [MarketingautomationLists](docs/sdks/marketingautomationlists/README.md)

* [list](docs/sdks/marketingautomationlists/README.md#list) - List Lists
* [create](docs/sdks/marketingautomationlists/README.md#create) - Create Lists
* [retrieve](docs/sdks/marketingautomationlists/README.md#retrieve) - Retrieve List

### [MarketingautomationMessages](docs/sdks/marketingautomationmessages/README.md)

* [list](docs/sdks/marketingautomationmessages/README.md#list) - List Messages
* [retrieve](docs/sdks/marketingautomationmessages/README.md#retrieve) - Retrieve Messages

### [MarketingautomationTemplates](docs/sdks/marketingautomationtemplates/README.md)

* [list](docs/sdks/marketingautomationtemplates/README.md#list) - List Templates
* [create](docs/sdks/marketingautomationtemplates/README.md#create) - Create Template
* [retrieve](docs/sdks/marketingautomationtemplates/README.md#retrieve) - Retrieve Template

### [MarketingautomationUsers](docs/sdks/marketingautomationusers/README.md)

* [list](docs/sdks/marketingautomationusers/README.md#list) - List  Users
* [retrieve](docs/sdks/marketingautomationusers/README.md#retrieve) - Retrieve Users

### [AtsActivities](docs/sdks/atsactivities/README.md)

* [list](docs/sdks/atsactivities/README.md#list) - List  Activities
* [create](docs/sdks/atsactivities/README.md#create) - Create Activities
* [retrieve](docs/sdks/atsactivities/README.md#retrieve) - Retrieve Activities

### [AtsApplications](docs/sdks/atsapplications/README.md)

* [list](docs/sdks/atsapplications/README.md#list) - List  Applications
* [create](docs/sdks/atsapplications/README.md#create) - Create Applications
* [retrieve](docs/sdks/atsapplications/README.md#retrieve) - Retrieve Applications

### [AtsAttachments](docs/sdks/atsattachments/README.md)

* [list](docs/sdks/atsattachments/README.md#list) - List  Attachments
* [create](docs/sdks/atsattachments/README.md#create) - Create Attachments
* [retrieve](docs/sdks/atsattachments/README.md#retrieve) - Retrieve Attachments

### [AtsCandidates](docs/sdks/atscandidates/README.md)

* [list](docs/sdks/atscandidates/README.md#list) - List  Candidates
* [create](docs/sdks/atscandidates/README.md#create) - Create Candidates
* [retrieve](docs/sdks/atscandidates/README.md#retrieve) - Retrieve Candidates

### [AtsDepartments](docs/sdks/atsdepartments/README.md)

* [list](docs/sdks/atsdepartments/README.md#list) - List  Departments
* [retrieve](docs/sdks/atsdepartments/README.md#retrieve) - Retrieve Departments

### [AtsInterviews](docs/sdks/atsinterviews/README.md)

* [list](docs/sdks/atsinterviews/README.md#list) - List  Interviews
* [create](docs/sdks/atsinterviews/README.md#create) - Create Interviews
* [retrieve](docs/sdks/atsinterviews/README.md#retrieve) - Retrieve Interviews

### [AtsJobinterviewstages](docs/sdks/atsjobinterviewstages/README.md)

* [list](docs/sdks/atsjobinterviewstages/README.md#list) - List  JobInterviewStages
* [retrieve](docs/sdks/atsjobinterviewstages/README.md#retrieve) - Retrieve Job Interview Stages

### [AtsJobs](docs/sdks/atsjobs/README.md)

* [list](docs/sdks/atsjobs/README.md#list) - List  Jobs
* [retrieve](docs/sdks/atsjobs/README.md#retrieve) - Retrieve Jobs

### [AtsOffers](docs/sdks/atsoffers/README.md)

* [list](docs/sdks/atsoffers/README.md#list) - List  Offers
* [retrieve](docs/sdks/atsoffers/README.md#retrieve) - Retrieve Offers

### [AtsOffices](docs/sdks/atsoffices/README.md)

* [list](docs/sdks/atsoffices/README.md#list) - List Offices
* [retrieve](docs/sdks/atsoffices/README.md#retrieve) - Retrieve Offices

### [AtsRejectreasons](docs/sdks/atsrejectreasons/README.md)

* [list](docs/sdks/atsrejectreasons/README.md#list) - List  RejectReasons
* [retrieve](docs/sdks/atsrejectreasons/README.md#retrieve) - Retrieve Reject Reasons

### [AtsScorecards](docs/sdks/atsscorecards/README.md)

* [list](docs/sdks/atsscorecards/README.md#list) - List  ScoreCards
* [retrieve](docs/sdks/atsscorecards/README.md#retrieve) - Retrieve Score Cards

### [AtsTags](docs/sdks/atstags/README.md)

* [list](docs/sdks/atstags/README.md#list) - List  Tags
* [retrieve](docs/sdks/atstags/README.md#retrieve) - Retrieve Tags

### [AtsUsers](docs/sdks/atsusers/README.md)

* [list](docs/sdks/atsusers/README.md#list) - List  Users
* [retrieve](docs/sdks/atsusers/README.md#retrieve) - Retrieve Users

### [AtsEeocs](docs/sdks/atseeocs/README.md)

* [list](docs/sdks/atseeocs/README.md#list) - List  Eeocss
* [retrieve](docs/sdks/atseeocs/README.md#retrieve) - Retrieve Eeocs

### [AccountingAccounts](docs/sdks/accountingaccounts/README.md)

* [list](docs/sdks/accountingaccounts/README.md#list) - List  Accounts
* [create](docs/sdks/accountingaccounts/README.md#create) - Create Accounts
* [retrieve](docs/sdks/accountingaccounts/README.md#retrieve) - Retrieve Accounts

### [AccountingAddresses](docs/sdks/accountingaddresses/README.md)

* [list](docs/sdks/accountingaddresses/README.md#list) - List  Addresss
* [retrieve](docs/sdks/accountingaddresses/README.md#retrieve) - Retrieve Addresses

### [AccountingAttachments](docs/sdks/accountingattachments/README.md)

* [list](docs/sdks/accountingattachments/README.md#list) - List  Attachments
* [create](docs/sdks/accountingattachments/README.md#create) - Create Attachments
* [retrieve](docs/sdks/accountingattachments/README.md#retrieve) - Retrieve Attachments

### [AccountingBalancesheets](docs/sdks/accountingbalancesheets/README.md)

* [list](docs/sdks/accountingbalancesheets/README.md#list) - List  BalanceSheets
* [retrieve](docs/sdks/accountingbalancesheets/README.md#retrieve) - Retrieve BalanceSheets

### [AccountingCashflowstatements](docs/sdks/accountingcashflowstatements/README.md)

* [list](docs/sdks/accountingcashflowstatements/README.md#list) - List  CashflowStatements
* [retrieve](docs/sdks/accountingcashflowstatements/README.md#retrieve) - Retrieve Cashflow Statements

### [AccountingCompanyinfos](docs/sdks/accountingcompanyinfos/README.md)

* [list](docs/sdks/accountingcompanyinfos/README.md#list) - List  CompanyInfos
* [retrieve](docs/sdks/accountingcompanyinfos/README.md#retrieve) - Retrieve Company Infos

### [AccountingContacts](docs/sdks/accountingcontacts/README.md)

* [list](docs/sdks/accountingcontacts/README.md#list) - List  Contacts
* [create](docs/sdks/accountingcontacts/README.md#create) - Create Contacts
* [retrieve](docs/sdks/accountingcontacts/README.md#retrieve) - Retrieve Contacts

### [AccountingCreditnotes](docs/sdks/accountingcreditnotes/README.md)

* [list](docs/sdks/accountingcreditnotes/README.md#list) - List  CreditNotes
* [retrieve](docs/sdks/accountingcreditnotes/README.md#retrieve) - Retrieve Credit Notes

### [AccountingExpenses](docs/sdks/accountingexpenses/README.md)

* [list](docs/sdks/accountingexpenses/README.md#list) - List  Expenses
* [create](docs/sdks/accountingexpenses/README.md#create) - Create Expenses
* [retrieve](docs/sdks/accountingexpenses/README.md#retrieve) - Retrieve Expenses

### [AccountingIncomestatements](docs/sdks/accountingincomestatements/README.md)

* [list](docs/sdks/accountingincomestatements/README.md#list) - List  IncomeStatements
* [retrieve](docs/sdks/accountingincomestatements/README.md#retrieve) - Retrieve Income Statements

### [AccountingInvoices](docs/sdks/accountinginvoices/README.md)

* [list](docs/sdks/accountinginvoices/README.md#list) - List  Invoices
* [create](docs/sdks/accountinginvoices/README.md#create) - Create Invoices
* [retrieve](docs/sdks/accountinginvoices/README.md#retrieve) - Retrieve Invoices

### [AccountingItems](docs/sdks/accountingitems/README.md)

* [list](docs/sdks/accountingitems/README.md#list) - List  Items
* [retrieve](docs/sdks/accountingitems/README.md#retrieve) - Retrieve Items

### [AccountingJournalentries](docs/sdks/accountingjournalentries/README.md)

* [list](docs/sdks/accountingjournalentries/README.md#list) - List  JournalEntrys
* [create](docs/sdks/accountingjournalentries/README.md#create) - Create Journal Entries
* [retrieve](docs/sdks/accountingjournalentries/README.md#retrieve) - Retrieve Journal Entries

### [AccountingPayments](docs/sdks/accountingpayments/README.md)

* [list](docs/sdks/accountingpayments/README.md#list) - List  Payments
* [create](docs/sdks/accountingpayments/README.md#create) - Create Payments
* [retrieve](docs/sdks/accountingpayments/README.md#retrieve) - Retrieve Payments

### [AccountingPhonenumbers](docs/sdks/accountingphonenumbers/README.md)

* [list](docs/sdks/accountingphonenumbers/README.md#list) - List  PhoneNumbers
* [retrieve](docs/sdks/accountingphonenumbers/README.md#retrieve) - Retrieve Phone Numbers

### [AccountingPurchaseorders](docs/sdks/accountingpurchaseorders/README.md)

* [list](docs/sdks/accountingpurchaseorders/README.md#list) - List  PurchaseOrders
* [create](docs/sdks/accountingpurchaseorders/README.md#create) - Create Purchase Orders
* [retrieve](docs/sdks/accountingpurchaseorders/README.md#retrieve) - Retrieve Purchase Orders

### [AccountingTaxrates](docs/sdks/accountingtaxrates/README.md)

* [list](docs/sdks/accountingtaxrates/README.md#list) - List  TaxRates
* [retrieve](docs/sdks/accountingtaxrates/README.md#retrieve) - Retrieve Tax Rates

### [AccountingTrackingcategories](docs/sdks/accountingtrackingcategories/README.md)

* [list](docs/sdks/accountingtrackingcategories/README.md#list) - List  TrackingCategorys
* [retrieve](docs/sdks/accountingtrackingcategories/README.md#retrieve) - Retrieve Tracking Categories

### [AccountingTransactions](docs/sdks/accountingtransactions/README.md)

* [list](docs/sdks/accountingtransactions/README.md#list) - List  Transactions
* [retrieve](docs/sdks/accountingtransactions/README.md#retrieve) - Retrieve Transactions

### [AccountingVendorcredits](docs/sdks/accountingvendorcredits/README.md)

* [list](docs/sdks/accountingvendorcredits/README.md#list) - List  VendorCredits
* [retrieve](docs/sdks/accountingvendorcredits/README.md#retrieve) - Retrieve Vendor Credits

### [FilestorageDrives](docs/sdks/filestoragedrives/README.md)

* [list](docs/sdks/filestoragedrives/README.md#list) - List Drives
* [retrieve](docs/sdks/filestoragedrives/README.md#retrieve) - Retrieve Drive

### [FilestorageFiles](docs/sdks/filestoragefiles/README.md)

* [list](docs/sdks/filestoragefiles/README.md#list) - List  Files
* [create](docs/sdks/filestoragefiles/README.md#create) - Create Files
* [retrieve](docs/sdks/filestoragefiles/README.md#retrieve) - Retrieve Files

### [FilestorageFolders](docs/sdks/filestoragefolders/README.md)

* [list](docs/sdks/filestoragefolders/README.md#list) - List  Folders
* [create](docs/sdks/filestoragefolders/README.md#create) - Create Folders
* [retrieve](docs/sdks/filestoragefolders/README.md#retrieve) - Retrieve Folders

### [FilestorageGroups](docs/sdks/filestoragegroups/README.md)

* [list](docs/sdks/filestoragegroups/README.md#list) - List  Groups
* [retrieve](docs/sdks/filestoragegroups/README.md#retrieve) - Retrieve Groups

### [FilestorageUsers](docs/sdks/filestorageusers/README.md)

* [list](docs/sdks/filestorageusers/README.md#list) - List Users
* [retrieve](docs/sdks/filestorageusers/README.md#retrieve) - Retrieve Users

### [EcommerceProducts](docs/sdks/ecommerceproducts/README.md)

* [list](docs/sdks/ecommerceproducts/README.md#list) - List a batch of Products
* [create](docs/sdks/ecommerceproducts/README.md#create) - Create Products
* [retrieve](docs/sdks/ecommerceproducts/README.md#retrieve) - Retrieve a Product

### [EcommerceOrders](docs/sdks/ecommerceorders/README.md)

* [list](docs/sdks/ecommerceorders/README.md#list) - List a batch of Orders
* [create](docs/sdks/ecommerceorders/README.md#create) - Create Orders
* [retrieve](docs/sdks/ecommerceorders/README.md#retrieve) - Retrieve a Order

### [EcommerceCustomers](docs/sdks/ecommercecustomers/README.md)

* [list](docs/sdks/ecommercecustomers/README.md#list) - List a batch of Customers
* [retrieve](docs/sdks/ecommercecustomers/README.md#retrieve) - Retrieve a Customer

### [EcommerceFulfillments](docs/sdks/ecommercefulfillments/README.md)

* [list](docs/sdks/ecommercefulfillments/README.md#list) - List a batch of Fulfillments
* [retrieve](docs/sdks/ecommercefulfillments/README.md#retrieve) - Retrieve a Fulfillment

### [TicketingAttachments](docs/sdks/ticketingattachments/README.md)

* [list](docs/sdks/ticketingattachments/README.md#list) - List  Attachments
* [create](docs/sdks/ticketingattachments/README.md#create) - Create Attachments
* [retrieve](docs/sdks/ticketingattachments/README.md#retrieve) - Retrieve Attachments
<!-- End Available Resources and Operations [operations] -->

<!-- Start Server Selection [server] -->
## Server Selection

## Server Selection

### Select Server by Index

You can override the default server globally by passing a server index to the `server_idx: int` optional parameter when initializing the SDK client instance. The selected server will then be used as the default on the operations that use it. This table lists the indexes associated with the available servers:

| # | Server | Variables |
| - | ------ | --------- |
| 0 | `https://api.panora.dev` | None |
| 1 | `https://api-sandbox.panora.dev` | None |
| 2 | `https://api-dev.panora.dev` | None |




### Override Server URL Per-Client

The default server can also be overridden globally by passing a URL to the `server_url: str` optional parameter when initializing the SDK client instance. For example:
<!-- End Server Selection [server] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically. Any manual changes added to internal files will be overwritten on the next generation. 
We look forward to hearing your feedback. Feel free to open a PR or an issue with a proof of concept and we'll do our best to include it in a future release. 

### SDK Created by [Speakeasy](https://www.speakeasy.com/?utm_source=<no value>&utm_campaign=ruby)
