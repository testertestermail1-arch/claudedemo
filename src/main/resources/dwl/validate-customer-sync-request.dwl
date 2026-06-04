%dw 2.0
output application/java
---
([] as Array)
  ++ (if (isBlank(attributes.headers."x-request-id" default "")) ["Missing required header: X-Request-Id"] else [])
  ++ (if (isBlank(attributes.headers."x-client-id" default "")) ["Missing required header: X-Client-Id"] else [])
