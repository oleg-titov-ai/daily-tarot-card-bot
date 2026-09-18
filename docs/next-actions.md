# Next Actions

Small practical improvements to consider next.

## Short Term

- Link product documentation from the README.
- Add a demo user journey.
- Add safe sample messages.
- Document idempotent retry behavior for ambiguous deliveries.
- Add a restart-recovery check that reuses the persisted delivery identity before any retry.
- Add a simulated crash-after-provider-acceptance recovery check before permitting a resend.
- Add a reconciliation check where provider lookup confirms prior delivery and local success state is repaired without resending.
- Add a recovery check that every retry reuses the same provider idempotency key as the original delivery claim.

## Medium Term

- Add basic workflow tests.
- Add unsubscribe flow notes.
- Add delivery failure handling notes.
- Add a simple content calendar example.

## Portfolio

- Keep privacy notes visible.
- Show the automation flow clearly.
