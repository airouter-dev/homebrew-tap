# Contributing

Formula changes must point to a public, immutable upstream release and use the
SHA-256 of the exact referenced archive. Do not add a formula only to reserve a
name or create a backlink.

For every update:

1. Review the upstream tag, changelog, CI, release workflow, and license.
2. Download the release assets and compare their bytes with the published
   checksum manifest.
3. Verify the upstream artifact attestation when one is available.
4. Update all supported operating-system and architecture URLs together.
5. Keep a functional `test do` block that exercises behavior beyond help text.
6. Let the complete Homebrew test matrix pass before merge.

Formulae must not add default providers, endpoints, credentials, telemetry,
affiliate links, referral parameters, or unrelated service promotion. Use only
synthetic fixtures; never place production credentials or customer data in an
issue, pull request, test, or log.
