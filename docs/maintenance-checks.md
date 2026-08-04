# Maintenance Checks

Before enabling scheduled delivery:

- Confirm the workflow uses an explicit timezone.
- Verify inactive subscribers are excluded immediately before sending.
- Test the text-only fallback for unavailable images.
- Confirm completion logs contain counts and statuses but no private identifiers.
- Verify a manual retry does not resend messages already marked delivered.
- Confirm generated content is labeled with the intended delivery date before sending.
- Verify delayed jobs outside the configured delivery window are skipped or rescheduled explicitly.
- Confirm a failed content-generation step cannot trigger an empty subscriber broadcast.
- Record the eligible-subscriber count at send start so delivery totals can be reconciled safely.
