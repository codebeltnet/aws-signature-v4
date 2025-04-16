# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

For more details, please refer to `PackageReleaseNotes.txt` on a per assembly basis in the `.nuget` folder.

> [!NOTE]  
> Changelog entries prior to version 8.4.0 was migrated from previous versions of Cuemon.Extensions.AspNetCore.Authentication.AwsSignature4.

## [9.0.2] - 2025-04-16

This is a service update that focuses on package dependencies.

## [9.0.1] - 2025-01-31

This is a service update that primarily focuses on package dependencies and minor improvements.

## [9.0.0] - 2024-11-13

This major release is first and foremost focused on ironing out any wrinkles that have been introduced with .NET 9 preview releases so the final release is production ready together with the official launch from Microsoft.

## [8.4.0] - 2024-10-05

## [7.0.0] 2022-11-09

### Added

- Aws4HmacAuthorizationHeader class in the Codebelt.Extensions.AwsSignature4 namespace that provides a representation of a HTTP AWS4-HMAC-SHA256 Authentication header
- Aws4HmacAuthorizationHeaderBuilder class in the Codebelt.Extensions.AwsSignature4 namespace that provides a way to fluently represent a HTTP AWS4-HMAC-SHA256 Authentication header
- Aws4HmacFields class in the Codebelt.Extensions.AwsSignature4 namespace that is a collection of constants for Aws4HmacAuthorizationHeaderBuilder and related
- DateTimeExtensions class in the Codebelt.Extensions.AwsSignature4 namespace that consist of extension methods for the DateTime struct: ToAwsDateString, ToAwsDateTimeString
