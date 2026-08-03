# Security policy

The Homebrew tap is a shared Exoduscode distribution channel. Formula changes,
workflow changes, source URLs, and checksums are security-sensitive and require
review by the configured code owner.

- Formula sources must reference immutable upstream release tags.
- SHA-256 values must be calculated from the exact tagged source archive.
- Workflows use least privilege and immutable action commit SHAs.
- Updates are accepted only through pull requests after `brew audit`, install,
  formula tests, and dependency review succeed.
- The release automation uses a dedicated GitHub App credential scoped only to
  this repository; the tap does not hold upstream release credentials.

Do not open a public issue for a suspected vulnerability. Use GitHub private
vulnerability reporting in the affected upstream project or contact
<security@exoduscode.io>.
