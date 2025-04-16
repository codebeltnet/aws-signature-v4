## About

An open-source project (MIT license) that targets and complements [AWS Signature Version 4](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv.html) for API requests. It aims to provide a good developer experience by making it simple to generate AWS4-HMAC-SHA256 HTTP Authorization header.

It is, by heart, free, flexible and built to extend and boost your agile codebelt.

## **Codebelt.Extensions.AwsSignature4** for .NET

The `Codebelt.Extensions.AwsSignature4` namespace complements the `Cuemon.AspNetCore.Authentication` namespace while providing a way making and signing HTTP requests in the context of specific AWS services using Signature Version 4.

More documentation available at our documentation site:

- [Codebelt.Extensions.AwsSignature4](https://awssignature4.codebelt.net/api/Codebelt.Extensions.AwsSignature4.html) 🔗

### CSharp Example

In this example we create an HTTP request with an AWS Signature Version 4 header. The example used here is part of the unit test for `Aws4HmacAuthorizationHeaderBuilder`. Unit test is based on [xUnit API](https://xunit.net/) and is written using convenient [extensions for xUnit API by Codebelt](https://github.com/codebeltnet/xunit).

```csharp
using var test = WebHostTestFactory.Create(); 
var context = test.Host.Services.GetRequiredService<IHttpContextAccessor>().HttpContext; 

var timestamp = DateTime.Parse("2022-07-10T12:50:42.2737531Z"); // <-- change this to valid date/time

context.Request.Headers.Add(HttpHeaderNames.Host, "cuemon.s3.amazonaws.com");
context.Request.Headers.Add("x-amz-date", timestamp.ToAwsDateTimeString());
context.Request.Headers.Add("x-amz-content-sha256", UnkeyedHashFactory.CreateCryptoSha256().ComputeHash("").ToHexadecimalString());
context.Request.QueryString = QueryString.Create("list-type", "2");

var headerBuilder = new Aws4HmacAuthorizationHeaderBuilder()
    .AddFromRequest(context.Request)
    .AddClientId("AKIAIOSFODNN7EXAMPLE") // <-- change this to valid access key
    .AddClientSecret("wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY") // <-- change this to valid secret
    .AddCredentialScope(timestamp);

var header = headerBuilder.Build().ToString(); // <-- AWS4-HMAC-SHA256 Credential=AKIAIOSFODNN7EXAMPLE/20220710/eu-west-1/s3/aws4_request, SignedHeaders=host;x-amz-content-sha256;x-amz-date, Signature=3d2c4a14b38d0283bb697176ade57b2118110de0f00c387d7f0ef58c55a5b91d
```

Full soucecode: [Aws4HmacAuthorizationHeaderBuilderTest](https://github.com/codebeltnet/aws-signature-v4/blob/main/test/Codebelt.Extensions.AwsSignature4.Test/Aws4HmacAuthorizationHeaderBuilderTest.cs)

### cURL Example
```powershell
curl --location --request GET 'https://cuemon.s3.amazonaws.com/?list-type=2' --header 'Authorization: AWS4-HMAC-SHA256 Credential=AKIAIOSFODNN7EXAMPLE/20220710/eu-west-1/s3/aws4_request, SignedHeaders=host;x-amz-content-sha256;x-amz-date, Signature=feeb4c8ba41733fadc73cba6631ddfc9a729f371206bbaa77f216a69dd5299c5' --header 'x-amz-date: 20220710T145042Z' --header 'x-amz-content-sha256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
```
