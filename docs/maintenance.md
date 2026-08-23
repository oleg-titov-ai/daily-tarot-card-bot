# Maintenance

- 2026-08-19: Keep scheduled-delivery checks idempotent: one subscriber should have at most one successful card delivery per local calendar date, including retries and overlapping triggers.
- 2026-08-20: Keep the demo card dataset validation in the release checklist so every referenced image and card identifier resolves before a scheduled portfolio run.
- 2026-08-20: Verify the documented timezone behavior still matches the scheduler so a subscriber cannot receive duplicate daily cards around date-boundary changes.
- 2026-08-20: Run a scheduler dry-run after timing changes and confirm the selected demo recipients, local dates, and card payloads are correct before enabling real delivery.
- 2026-08-21: Verify a failed image lookup falls back to the documented text-only card response without recording a duplicate successful delivery.
- 2026-08-21: Verify a retried demo delivery reuses the same logical delivery record rather than creating a second successful history entry for the same subscriber and local date.
- 2026-08-21: Verify disabling and re-enabling the demo schedule does not replay previously completed deliveries for the same synthetic subscriber and local date.
- 2026-08-21: Recheck the documented card-selection fallback after dataset changes so an invalid card entry fails safely without sending a partial or mismatched demo message.
- 2026-08-22: Keep the demo scheduler check anchored to synthetic subscribers so timezone and retry tests can be repeated without touching real delivery history.
- 2026-08-22: Keep one documented date-boundary dry-run for the synthetic subscriber set so scheduler changes can be reviewed safely around local midnight transitions.
- 2026-08-22: Before capturing a portfolio scheduler run, verify the synthetic delivery history starts from the documented empty baseline so screenshots cannot include stale successes from earlier tests.
- 2026-08-22: Verify scheduler recovery after a simulated restart resumes from persisted synthetic delivery state without replaying already completed daily sends.
- 2026-08-23: Keep one synthetic scheduler audit that compares selected card ID, rendered text, and delivery-history record so portfolio demos cannot show mismatched card content.
- 2026-08-23: Verify a synthetic subscriber with an invalid timezone fails validation cleanly and cannot be silently scheduled against the server default timezone.
