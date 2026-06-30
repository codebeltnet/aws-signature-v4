---
uid: Codebelt.Extensions.AwsSignature4.Aws4HmacAuthorizationHeaderBuilder
example:
  - *content
---

## Examples

This example demonstrates how to build an AWS Signature Version 4 authorization header using the fluent builder API:

```csharp
using System;
using Codebelt.Extensions.AwsSignature4;

namespace Aws4Example;

class Program
{
    static void Main()
    {
        var timestamp = DateTime.UtcNow;
        
        // Create the builder and add credentials
        var headerBuilder = new Aws4HmacAuthorizationHeaderBuilder()
            .AddClientId("AKIAIOSFODNN7EXAMPLE")
            .AddClientSecret("wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY")
            .AddCredentialScope(timestamp);
        
        Console.WriteLine($"Client ID: AKIAIOSFODNN7EXAMPLE");
        Console.WriteLine($"Credential Scope: {timestamp.ToAwsDateString()}/eu-west-1/s3/aws4_request");
        Console.WriteLine("");
        Console.WriteLine("To complete the header:");
        Console.WriteLine("1. Call AddFromRequest() with an HttpRequest to populate headers, method, URI, and payload");
        Console.WriteLine("2. Call Build() to generate the AWS4-HMAC-SHA256 Authorization header");
    }
}
```

For a complete, real-world example that demonstrates building a full AWS Signature Version 4 header from an `HttpRequest`, see the [Aws4HmacAuthorizationHeaderBuilderTest](https://github.com/codebeltnet/aws-signature-v4/blob/main/test/Codebelt.Extensions.AwsSignature4.Test/Aws4HmacAuthorizationHeaderBuilderTest.cs) unit test in the repository.
