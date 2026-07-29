# Security Policy

## Supported formulae

Only the newest formula version on the default branch is supported. Upstream
software support windows remain governed by each packaged project's policy.

## Reporting

Use [GitHub private vulnerability reporting](https://github.com/airouter-dev/homebrew-tap/security/advisories/new)
for a wrong checksum, mutable or compromised download, unsafe archive path,
formula command injection, or release-provenance mismatch. Do not include real
API keys, signed URLs, prompts, responses, or customer data.

For runtime behavior in `oai-smoke`, use the upstream project's
[private advisory form](https://github.com/airouter-dev/openai-compatible-api-smoke-test/security/advisories/new).

## Boundary

Homebrew verifies the formula's configured SHA-256 before installation. This
tap does not decide whether an API endpoint is trustworthy and cannot protect a
credential already exposed in a shell history, CI log, screenshot, proxy, or
provider log.
