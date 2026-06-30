---
uid: Codebelt.Extensions.AwsSignature4.Aws4HmacAuthorizationHeader
example:
  - *content
---

## Examples

This example demonstrates how to parse an existing AWS Signature Version 4 authorization header string:

```csharp
using System;
using Codebelt.Extensions.AwsSignature4;

namespace Aws4Example;

class Program
{
    static void Main()
    {
        // Parse an AWS4 authorization header string
        var headerString = "AWS4-HMAC-SHA256 Credential=AKIAIOSFODNN7EXAMPLE/20220710/eu-west-1/s3/aws4_request, SignedHeaders=host;x-amz-content-sha256;x-amz-date, Signature=3d2c4a14b38d0283bb697176ade57b2118110de0f00c387d7f0ef58c55a5b91d";
        
        var header = Aws4HmacAuthorizationHeader.Create(headerString);
        
        Console.WriteLine($"Client ID: {header.ClientId}");
        Console.WriteLine($"Credential Scope: {header.CredentialScope}");
        Console.WriteLine($"Signed Headers: {header.SignedHeaders}");
        Console.WriteLine($"Signature: {header.Signature}");
    }
}
```
