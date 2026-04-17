# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

For more details, please refer to `PackageReleaseNotes.txt` on a per assembly basis in the `.nuget` folder.

> [!NOTE]  
> Changelog entries prior to version 8.4.0 was migrated from previous versions of Cuemon.Extensions.AspNetCore.Authentication.AwsSignature4.

## [10.0.6] - 2026-04-17

This is a service update that focuses on package dependencies.

## [10.0.5] - 2026-03-24

This is a patch release that modernizes build infrastructure and tooling while keeping dependencies current with compatible package versions.

### Changed

- Upgraded NuGet packages to latest compatible versions: `Codebelt.Extensions.Xunit.App` (11.0.7 → 11.0.8), `Cuemon.AspNetCore.Authentication` (10.4.0 → 10.5.0), `Cuemon.Security.Cryptography` (10.4.0 → 10.5.0),
- Upgraded documentation tooling: DocFX (2.78.4 → 2.78.5),
- Optimized build target: Simplified `PackageReleaseNotes` loading in `Directory.Build.targets` for clearer intent and reduced MSBuild iterations,
- Modernized test environments: Replaced explicit .NET 8 reference with simplified docker image versioning (`net8.0.418-9.0.311-10.0.103` → `9` and `10`), added dedicated .NET 10 test runner,
- Enhanced CI/CD: Added `carter` package detection to automated bump-nuget workflow.

## [10.0.4] - 2026-02-28

This is a service update that focuses on package dependencies.

## [10.0.3] - 2026-02-20

This is a service update that focuses on package dependencies.

## [10.0.2] - 2026-02-15

This is a service update that focuses on package dependencies.

## [10.0.1] - 2026-01-22

This is a service update that focuses on package dependencies.

## [10.0.0] - 2025-11-12

This is a major release that focuses on adapting latest `.NET 10` release (LTS) in exchange for current `.NET 8` (LTS).

> To ensure access to current features, improvements, and security updates, and to keep the codebase clean and easy to maintain, we target only the latest long-term (LTS), short-term (STS) and (where applicable) cross-platform .NET versions.

## [9.0.8] - 2025-10-20

This is a service update that focuses on package dependencies.

## [9.0.7] - 2025-09-15

This is a service update that focuses on package dependencies.

## [9.0.6] - 2025-08-20

This is a service update that focuses on package dependencies.

## [9.0.5] - 2025-07-11

This is a service update that focuses on package dependencies.

## [9.0.4] - 2025-06-16

This is a service update that focuses on package dependencies.

## [9.0.3] - 2025-05-25

This is a service update that focuses on package dependencies.

## [9.0.2] - 2025-04-16

This is a service update that focuses on package dependencies.

## [9.0.1] - 2025-01-31

This is a service update that primarily focuses on package dependencies and minor improvements.

## [9.0.0] - 2024-11-13

This major release is first and foremost focused on ironing out any wrinkles that have been introduced with .NET 9 preview releases so the final release is production ready together with the official launch from Microsoft.

## [8.4.0] - 2024-10-05

## [7.0.0] 2022-11-09

### Added

- Aws4HmacAuthorizationHeader class in the Codebelt.Extensions.AwsSignature4 namespace that provides a representation of a HTTP AWS4-HMAC-SHA256 Authentication header,
- Aws4HmacAuthorizationHeaderBuilder class in the Codebelt.Extensions.AwsSignature4 namespace that provides a way to fluently represent a HTTP AWS4-HMAC-SHA256 Authentication header,
- Aws4HmacFields class in the Codebelt.Extensions.AwsSignature4 namespace that is a collection of constants for Aws4HmacAuthorizationHeaderBuilder and related,
- DateTimeExtensions class in the Codebelt.Extensions.AwsSignature4 namespace that consist of extension methods for the DateTime struct: ToAwsDateString, ToAwsDateTimeString.

[Unreleased]: https://github.com/codebeltnet/aws-signature-v4/compare/v10.0.5...HEAD
[10.0.5]: https://github.com/codebeltnet/aws-signature-v4/compare/v10.0.4...v10.0.5
[10.0.4]: https://github.com/codebeltnet/aws-signature-v4/compare/v10.0.3...v10.0.4
[10.0.3]: https://github.com/codebeltnet/aws-signature-v4/compare/v10.0.2...v10.0.3
[10.0.2]: https://github.com/codebeltnet/aws-signature-v4/compare/v10.0.1...v10.0.2
[10.0.1]: https://github.com/codebeltnet/aws-signature-v4/compare/v10.0.0...v10.0.1
[10.0.0]: https://github.com/codebeltnet/aws-signature-v4/compare/v9.0.8...v10.0.0
[9.0.8]: https://github.com/codebeltnet/aws-signature-v4/compare/v9.0.7...v9.0.8
[9.0.7]: https://github.com/codebeltnet/aws-signature-v4/compare/v9.0.6...v9.0.7
[9.0.6]: https://github.com/codebeltnet/aws-signature-v4/compare/v9.0.5...v9.0.6
[9.0.5]: https://github.com/codebeltnet/aws-signature-v4/compare/v9.0.4...v9.0.5
[9.0.4]: https://github.com/codebeltnet/aws-signature-v4/compare/v9.0.3...v9.0.4
[9.0.3]: https://github.com/codebeltnet/aws-signature-v4/compare/v9.0.2...v9.0.3
[9.0.2]: https://github.com/codebeltnet/aws-signature-v4/compare/v9.0.1...v9.0.2
[9.0.1]: https://github.com/codebeltnet/aws-signature-v4/compare/v9.0.0...v9.0.1
[9.0.0]: https://github.com/codebeltnet/aws-signature-v4/compare/v8.4.0...v9.0.0
[8.4.0]: https://github.com/codebeltnet/aws-signature-v4/compare/v7.0.0...v8.4.0
