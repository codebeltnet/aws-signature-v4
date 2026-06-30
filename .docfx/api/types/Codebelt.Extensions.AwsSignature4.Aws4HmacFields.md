---
uid: Codebelt.Extensions.AwsSignature4.Aws4HmacFields
example:
  - *content
---

## Examples

This example demonstrates using the `Aws4HmacFields` constants to construct AWS Signature Version 4 credential scope and authorization header components:

```csharp
using System;
using Codebelt.Extensions.AwsSignature4;

namespace Aws4Example;

class Program
{
    static void Main()
    {
        var timestamp = DateTime.UtcNow;
        var region = "us-east-1";
        var service = "s3";
        var clientId = "AKIAIOSFODNN7EXAMPLE";
        
        // Access Aws4HmacFields constants to build the credential scope
        var dateStamp = timestamp.ToAwsDateString();
        var credentialScope = $"{dateStamp}/{region}/{service}/{Aws4HmacFields.Aws4Request}";
        
        // Format the Authorization header using Aws4HmacFields.Scheme
        var signedHeaders = "host;x-amz-date;x-amz-content-sha256";
        var signature = "computed-signature-hex-string";
        
        var authorizationHeaderValue = $"{Aws4HmacFields.Scheme} Credential={clientId}/{credentialScope}, SignedHeaders={signedHeaders}, Signature={signature}";
        
        // Retrieve other Aws4HmacFields constants for date formatting
        var dateTimeStampFormat = Aws4HmacFields.DateTimeStampFormat;
        var dateStampFormat = Aws4HmacFields.DateStampFormat;
        var dateTimeStamp = timestamp.ToString(dateTimeStampFormat);
        
        Console.WriteLine($"Scheme: {Aws4HmacFields.Scheme}");
        Console.WriteLine($"Date-Time Stamp Format: {dateTimeStampFormat}");
        Console.WriteLine($"Date-Time Stamp: {dateTimeStamp}");
        Console.WriteLine($"Credential Scope: {credentialScope}");
        Console.WriteLine($"Authorization Header: {authorizationHeaderValue}");
    }
}
```



