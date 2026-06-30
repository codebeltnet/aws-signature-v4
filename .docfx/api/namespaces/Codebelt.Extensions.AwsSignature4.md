---
uid: Codebelt.Extensions.AwsSignature4
summary: *content
---
When your ASP.NET Core application needs to sign HTTP requests for AWS services using Signature Version 4, this namespace provides a fluent builder pattern and extension methods that simplify AWS4-HMAC-SHA256 authentication. Use [`Aws4HmacAuthorizationHeaderBuilder`](xref:Codebelt.Extensions.AwsSignature4.Aws4HmacAuthorizationHeaderBuilder) to construct complete authorization headers from request data and credentials, or use the `DateTime` extension methods to format timestamps in AWS's required date formats.

[!INCLUDE [availability-modern](../../includes/availability-modern.md)]

## Start Here

**For building new authorization headers:** Start with [`Aws4HmacAuthorizationHeaderBuilder`](xref:Codebelt.Extensions.AwsSignature4.Aws4HmacAuthorizationHeaderBuilder), which provides a fluent interface to construct complete AWS Signature Version 4 authorization headers from your HTTP request and AWS credentials.

**For parsing existing headers:** Use [`Aws4HmacAuthorizationHeader.Create`](xref:Codebelt.Extensions.AwsSignature4.Aws4HmacAuthorizationHeader.Create) to validate and parse an existing authorization header string.

**For date/time formatting:** Use the `DateTime` extension methods [`ToAwsDateString`](xref:Codebelt.Extensions.AwsSignature4.DateTimeExtensions.ToAwsDateString) and [`ToAwsDateTimeString`](xref:Codebelt.Extensions.AwsSignature4.DateTimeExtensions.ToAwsDateTimeString) to format request timestamps in the formats required by AWS Signature Version 4.

## Related

- [AWS Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/reference-for-signature-version-4.html) — Official AWS Signature Version 4 documentation
- [AWS Signature Version 4 Documentation](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-header-based-auth.html) — Header-based authentication specification

## Extension Members

| Type | Ext | Methods |
|---:|:-:|---|
| `DateTime` | ⬇️ | `ToAwsDateString`, `ToAwsDateTimeString` |

