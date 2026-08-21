# Maintenance

- 2026-08-19: Keep scheduled-delivery checks idempotent: one subscriber should have at most one successful card delivery per local calendar date, including retries and overlapping triggers.
- 2026-08-20: Keep the demo card dataset validation in the release checklist so every referenced image and card identifier resolves before a scheduled portfolio run.
- 2026-08-20: Verify the documented timezone behavior still matches the scheduler so a subscriber cannot receive duplicate daily cards around date-boundary changes.
- 2026-08-20: Run a scheduler dry-run after timing changes and confirm the selected demo recipients, local dates, and card payloads are correct before enabling real delivery.
- 2026-08-21: Verify a failed image lookup falls back to the documented text-only card response without recording a duplicate successful delivery.
- 2026-08-21: Verify a retried demo delivery reuses the same logical delivery record rather than creating a second successful history entry for the same subscriber and local date.
