import ballerina/http;
import ballerina/io;

configurable int ADMIN_PORT = 9443;

listener http:Listener ep0 = new (ADMIN_PORT);

service /api/am/admin/v3 on ep0 {
    // resource function get throttling/policies/search(string? query) returns ThrottlePolicyDetailsList {
    // }
    // resource function get throttling/policies/application(@http:Header string? accept = "application/json") returns ApplicationThrottlePolicyList|NotAcceptableError {
    // }
    // resource function post throttling/policies/application(@http:Payload ApplicationThrottlePolicy payload, @http:Header string 'content\-type = "application/json") returns CreatedApplicationThrottlePolicy|BadRequestError|UnsupportedMediaTypeError {
    // }
    // resource function get throttling/policies/application/[string policyId]() returns ApplicationThrottlePolicy|NotFoundError|NotAcceptableError {
    // }
    // resource function put throttling/policies/application/[string policyId](@http:Payload ApplicationThrottlePolicy payload, @http:Header string 'content\-type = "application/json") returns ApplicationThrottlePolicy|BadRequestError|NotFoundError {
    // }
    // resource function delete throttling/policies/application/[string policyId]() returns http:Ok|NotFoundError {
    // }
    resource function get throttling/policies/subscription(@http:Header string? accept = "application/json") returns SubscriptionThrottlePolicyList|NotAcceptableError {
        return subPolicyList;
    }
    // resource function post throttling/policies/subscription(@http:Payload SubscriptionThrottlePolicy payload, @http:Header string 'content\-type = "application/json") returns CreatedSubscriptionThrottlePolicy|BadRequestError|UnsupportedMediaTypeError {
    // }
    // resource function get throttling/policies/subscription/[string policyId]() returns SubscriptionThrottlePolicy|NotFoundError|NotAcceptableError {
    // }
    // resource function put throttling/policies/subscription/[string policyId](@http:Payload SubscriptionThrottlePolicy payload, @http:Header string 'content\-type = "application/json") returns SubscriptionThrottlePolicy|BadRequestError|NotFoundError {
    // }
    // resource function delete throttling/policies/subscription/[string policyId]() returns http:Ok|NotFoundError {
    // }
    // resource function get throttling/policies/custom(@http:Header string? accept = "application/json") returns CustomRuleList|NotAcceptableError {
    // }
    // resource function post throttling/policies/custom(@http:Payload CustomRule payload, @http:Header string 'content\-type = "application/json") returns CreatedCustomRule|BadRequestError|UnsupportedMediaTypeError {
    // }
    // resource function get throttling/policies/custom/[string ruleId]() returns CustomRule|NotFoundError|NotAcceptableError {
    // }
    // resource function put throttling/policies/custom/[string ruleId](@http:Payload CustomRule payload, @http:Header string 'content\-type = "application/json") returns CustomRule|BadRequestError|NotFoundError {
    // }
    // resource function delete throttling/policies/custom/[string ruleId]() returns http:Ok|NotFoundError {
    // }
    resource function get throttling/policies/advanced(@http:Header string? accept = "application/json") returns AdvancedThrottlePolicyList|NotAcceptableError {
        return advancedPolicyList;
    }
    resource function post throttling/policies/advanced(@http:Payload AdvancedThrottlePolicy payload, @http:Header string 'content\-type = "application/json") returns CreatedAdvancedThrottlePolicy|BadRequestError|UnsupportedMediaTypeError {
        io:println("Created Advanced Policy: " + payload.get("policyName").toString());
        return {body: policyCreated};
    }
    // resource function get throttling/policies/advanced/[string policyId]() returns AdvancedThrottlePolicy|NotFoundError|NotAcceptableError {
    // }
    // resource function put throttling/policies/advanced/[string policyId](@http:Payload AdvancedThrottlePolicy payload, @http:Header string 'content\-type = "application/json") returns AdvancedThrottlePolicy|BadRequestError|NotFoundError {
    // }
    // resource function delete throttling/policies/advanced/[string policyId]() returns http:Ok|NotFoundError {
    // }
    // resource function get throttling/policies/export(string? policyId, string? name, string? 'type, string? format) returns ExportThrottlePolicy|NotFoundError|InternalServerErrorError {
    // }
    // resource function post throttling/policies/'import(boolean? overwrite, @http:Payload json payload) returns http:Ok|ForbiddenError|NotFoundError|ConflictError|InternalServerErrorError {
    // }
    // resource function get throttling/'deny\-policies(@http:Header string? accept = "application/json") returns BlockingConditionList|NotAcceptableError {
    // }
    // resource function post throttling/'deny\-policies(@http:Payload BlockingCondition payload, @http:Header string 'content\-type = "application/json") returns CreatedBlockingCondition|BadRequestError|UnsupportedMediaTypeError {
    // }
    // resource function get throttling/'deny\-policy/[string conditionId]() returns BlockingCondition|NotFoundError|NotAcceptableError {
    // }
    // resource function delete throttling/'deny\-policy/[string conditionId]() returns http:Ok|NotFoundError {
    // }
    // resource function patch throttling/'deny\-policy/[string conditionId](@http:Payload BlockingConditionStatus payload, @http:Header string 'content\-type = "application/json") returns BlockingCondition|BadRequestError|NotFoundError {
    // }
    // resource function get applications(string? user, string? name, string? tenantDomain, int 'limit = 25, int offset = 0, @http:Header string? accept = "application/json", string sortBy = "name", string sortOrder = "asc") returns ApplicationList|BadRequestError|NotAcceptableError {
    // }
    // resource function get applications/[string applicationId]() returns Application|BadRequestError|NotFoundError|NotAcceptableError {
    // }
    // resource function delete applications/[string applicationId]() returns http:Ok|AcceptedWorkflowResponse|NotFoundError {
    // }
    // resource function post applications/[string applicationId]/'change\-owner(string owner) returns http:Ok|BadRequestError|NotFoundError {
    // }
    // resource function get environments() returns EnvironmentList {
    // }
    // resource function post environments(@http:Payload Environment payload) returns CreatedEnvironment|BadRequestError {
    // }
    // resource function put environments/[string environmentId](@http:Payload Environment payload) returns Environment|BadRequestError|NotFoundError {
    // }
    // resource function delete environments/[string environmentId]() returns http:Ok|NotFoundError {
    // }
    // resource function get 'bot\-detection\-data() returns BotDetectionDataList|NotFoundError {
    // }
    // resource function post monetization/'publish\-usage() returns PublishStatus|AcceptedPublishStatus|NotFoundError|InternalServerErrorError {
    // }
    // resource function get monetization/'publish\-usage/status() returns MonetizationUsagePublishInfo {
    // }
    // resource function get workflows(string? workflowType, int 'limit = 25, int offset = 0, @http:Header string? accept = "application/json") returns WorkflowList|BadRequestError|NotFoundError|NotAcceptableError {
    // }
    // resource function get workflows/[string externalWorkflowRef]() returns WorkflowInfo|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function post workflows/'update\-workflow\-status(string workflowReferenceId, @http:Payload Workflow payload) returns Workflow|BadRequestError|NotFoundError {
    // }
    // resource function get 'tenant\-info/[string username]() returns TenantInfo|NotFoundError|NotAcceptableError {
    // }
    // resource function get 'custom\-urls/[string tenantDomain]() returns CustomUrlInfo|NotFoundError|NotAcceptableError {
    // }
    // resource function get 'api\-categories() returns APICategoryList {
    // }
    // resource function post 'api\-categories(@http:Payload APICategory payload) returns CreatedAPICategory|BadRequestError {
    // }
    // resource function put 'api\-categories/[string apiCategoryId](@http:Payload APICategory payload) returns APICategory|BadRequestError|NotFoundError {
    // }
    // resource function delete 'api\-categories/[string apiCategoryId]() returns http:Ok|NotFoundError {
    // }
    resource function get settings() returns Settings|NotFoundError {
        return settingPayload;
    }
    // resource function get 'alert\-types() returns AlertTypesList|InternalServerErrorError {
    // }
    // resource function get 'alert\-subscriptions() returns AlertsSubscription|InternalServerErrorError {
    // }
    // resource function put 'alert\-subscriptions(@http:Payload AlertsSubscription payload) returns AlertsSubscription|BadRequestError|InternalServerErrorError {
    // }
    // resource function delete 'alert\-subscriptions() returns http:Ok|InternalServerErrorError {
    // }
    // resource function get 'alert\-subscriptions/'bot\-detection() returns BotDetectionAlertSubscriptionList|InternalServerErrorError {
    // }
    // resource function post 'alert\-subscriptions/'bot\-detection(@http:Payload BotDetectionAlertSubscription payload) returns BotDetectionAlertSubscription|BadRequestError|InternalServerErrorError {
    // }
    // resource function delete 'alert\-subscriptions/'bot\-detection/[string uuid]() returns http:Ok|NotFoundError|InternalServerErrorError {
    // }
    // resource function get 'system\-scopes/[string scopeName](string? username) returns ScopeSettings|BadRequestError|NotFoundError {
    // }
    // resource function get 'system\-scopes() returns ScopeList|InternalServerErrorError {
    // }
    // resource function put 'system\-scopes(@http:Payload ScopeList payload) returns ScopeList|BadRequestError|InternalServerErrorError {
    // }
    // resource function get 'system\-scopes/'role\-aliases() returns RoleAliasList|NotFoundError {
    // }
    // resource function put 'system\-scopes/'role\-aliases(@http:Payload RoleAliasList payload) returns RoleAliasList|BadRequestError|InternalServerErrorError {
    // }
    // resource function head roles/[string roleId]() returns http:Ok|NotFoundError|InternalServerErrorError {
    // }
    // resource function get 'tenant\-theme() returns json|ForbiddenError|NotFoundError|InternalServerErrorError {
    // }
    // resource function put 'tenant\-theme(@http:Payload json payload) returns http:Ok|ForbiddenError|PayloadTooLargeError|InternalServerErrorError {
    // }
    // resource function get 'tenant\-config() returns string|ForbiddenError|NotFoundError|InternalServerErrorError {
    // }
    // resource function put 'tenant\-config(@http:Payload string payload) returns string|ForbiddenError|PayloadTooLargeError|InternalServerErrorError {
    // }
    // resource function get 'tenant\-config\-schema() returns string|ForbiddenError|NotFoundError|InternalServerErrorError {
    // }
    // resource function get 'key\-managers() returns KeyManagerList {
    // }
    // resource function post 'key\-managers(@http:Payload KeyManager payload) returns CreatedKeyManager|BadRequestError {
    // }
    // resource function get 'key\-managers/[string keyManagerId]() returns KeyManager|NotFoundError|NotAcceptableError {
    // }
    // resource function put 'key\-managers/[string keyManagerId](@http:Payload KeyManager payload) returns KeyManager|BadRequestError|NotFoundError {
    // }
    // resource function delete 'key\-managers/[string keyManagerId]() returns http:Ok|NotFoundError {
    // }
    // resource function post 'key\-managers/discover(@http:Payload json payload) returns KeyManagerWellKnownResponse {
    // }
}
