# AI ROUTER Homebrew Tap

This tap distributes reviewed releases of small, provider-neutral developer
utilities maintained by AI ROUTER. It currently contains one formula:
[`oai-smoke`](https://github.com/airouter-dev/openai-compatible-api-smoke-test),
a standard-library-only CLI for bounded OpenAI-compatible API smoke tests.

## Install

Install only the formula you need:

```bash
brew install airouter-dev/tap/oai-smoke
```

Homebrew downloads the matching immutable macOS or Linux release archive and
checks its SHA-256 digest before installation. The formula supports Apple
Silicon, Intel macOS, ARM64 Linux, and AMD64 Linux.

Verify the installed version:

```bash
oai-smoke --version
```

The default API check sends only `GET /models`. A chat request is sent only
when both `--chat` and an explicit `--model` are supplied. Read the upstream
[usage guide](https://github.com/airouter-dev/openai-compatible-api-smoke-test#readme)
and [threat model](https://github.com/airouter-dev/openai-compatible-api-smoke-test/blob/main/docs/THREAT_MODEL.md)
before using a production credential.

## Trust and verification

- Formula URLs are pinned to a semantic release tag and an exact SHA-256.
- Upstream release archives are built twice and compared byte-for-byte before
  publication.
- Each archive has a GitHub artifact attestation from the upstream tag-only
  release workflow.
- Pull requests run Homebrew's own audit, install, and formula test flow on
  Intel macOS, Apple Silicon macOS, and Linux.

To independently verify a downloaded upstream archive, follow the
[release procedure](https://github.com/airouter-dev/openai-compatible-api-smoke-test/blob/main/RELEASING.md).

## Scope

This is an upstream tap, not `homebrew/core`. The formula does not configure a
default API provider, endpoint, model, credential, telemetry system, referral,
or affiliate behavior. AI ROUTER's maintenance of the package does not imply
affiliation with or endorsement by OpenAI or Homebrew.

## Contributing and security

Formula update requirements are in [CONTRIBUTING.md](CONTRIBUTING.md). Report a
packaging or checksum vulnerability through [private vulnerability reporting](https://github.com/airouter-dev/homebrew-tap/security/advisories/new),
not a public issue.

## License

The tap's formula and documentation are MIT licensed. Packaged projects retain
the licenses declared in their own repositories and formulae.
