# fullproject — leads sync API

Mule 4 application: customer sync API (experience) → process orchestration → MySQL + Salesforce (system).

## Structure

```
src/main/mule/flows/
  global-config.xml
  experience/customer-sync-api.xml   # POST /sync-db-leads + header validation
  process/leads-orchestration.xml
  system/mysql-sfdc-subflows.xml
src/main/resources/
  config.yaml
  dwl/validate-customer-sync-request.dwl
```

## Customer API

- **Method:** POST
- **Path:** `/sync-db-leads`
- **Required headers:** `X-Request-Id`, `X-Client-Id`
- **Invalid request:** HTTP 400 JSON error with `correlationId`

## Run locally

```bash
mvn clean package -DskipTests
# Deploy to Mule runtime per your environment
```

Use `config.yaml.example` as a template; do not commit real secrets.

## Reviews

From workspace root:

```bash
./overall_review project1_folder --pr
```

Report: `reviews/project1_folder-review-feedback.html`
