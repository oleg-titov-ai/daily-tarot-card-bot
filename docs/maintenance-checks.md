# Maintenance Checks

Before enabling scheduled delivery:

- Confirm the workflow uses an explicit timezone.
- Verify inactive subscribers are excluded immediately before sending.
- Test the text-only fallback for unavailable images.
- Confirm completion logs contain counts and statuses but no private identifiers.
