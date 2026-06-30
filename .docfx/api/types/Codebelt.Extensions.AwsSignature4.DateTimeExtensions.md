---
uid: Codebelt.Extensions.AwsSignature4.DateTimeExtensions
example:
  - *content
---

## Examples

### Converting DateTime for AWS Credential Scope

When building an AWS Signature Version 4 request, you must format the request timestamp in two distinct ways: as a date-only string for the credential scope (which identifies the date, region, service, and request terminator), and as a complete date-time string for the `x-amz-date` HTTP header. The `ToAwsDateString` and `ToAwsDateTimeString` extension methods handle this formatting using the invariant culture to ensure consistent results across all locales. This example shows how to use both methods together in the context of building a complete AWS authorization header.

```csharp
using System;
using Codebelt.Extensions.AwsSignature4;

namespace Aws4Example;

class Program
{
    static void Main()
    {
        var timestamp = DateTime.Parse("2022-07-10T12:50:42Z");
        
        // Convert to AWS date format (yyyyMMdd)
        var dateString = timestamp.ToAwsDateString();
        Console.WriteLine($"AWS Date: {dateString}");  // Output: 20220710
        
        // Convert to AWS date-time format (yyyyMMddTHHmmssZ)
        var dateTimeString = timestamp.ToAwsDateTimeString();
        Console.WriteLine($"AWS DateTime: {dateTimeString}");  // Output: 20220710T125042Z
        
        // Use in credential scope construction
        var credentialScope = $"{dateString}/eu-west-1/s3/aws4_request";
        Console.WriteLine($"Credential Scope: {credentialScope}");
        
        // Use for x-amz-date header
        Console.WriteLine($"x-amz-date header value: {dateTimeString}");
    }
}
```

### ToAwsDateString Extension

The `ToAwsDateString` extension method converts a `DateTime` to the AWS date format (`yyyyMMdd`), which is required as the date component in AWS Signature Version 4's credential scope. The credential scope defines the date, AWS region, service name, and request terminator, and is a critical part of the signing process. This example shows how to format a timestamp for use in constructing the credential scope portion of an authorization header.

```csharp
using System;
using Codebelt.Extensions.AwsSignature4;

namespace Aws4Example;

class Program
{
    static void Main()
    {
        var timestamp = new DateTime(2024, 1, 15, 9, 30, 45);
        
        // Convert to date-only format for credential scope
        var dateForScope = timestamp.ToAwsDateString();
        
        Console.WriteLine($"Date for credential scope: {dateForScope}");  // Output: 20240115
    }
}
```

### ToAwsDateTimeString Extension

The `ToAwsDateTimeString` extension method converts a `DateTime` to the AWS date-time format (`yyyyMMddTHHmmssZ`), which must be sent in the `x-amz-date` HTTP header for every AWS Signature Version 4 request. This header value is included in the signature computation and must match the timestamp used in the credential scope. This example shows how to format a request timestamp for the required `x-amz-date` header.

```csharp
using System;
using Codebelt.Extensions.AwsSignature4;

namespace Aws4Example;

class Program
{
    static void Main()
    {
        var timestamp = new DateTime(2024, 1, 15, 14, 30, 45);
        
        // Convert to full date-time format for x-amz-date header
        var dateTimeForHeader = timestamp.ToAwsDateTimeString();
        
        Console.WriteLine($"Value for x-amz-date header: {dateTimeForHeader}");  // Output: 20240115T143045Z
    }
}
```


