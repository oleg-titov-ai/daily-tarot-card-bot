# Maintenance

- 2026-08-19: Keep scheduled-delivery checks idempotent: one subscriber should have at most one successful card delivery per local calendar date, including retries and overlapping triggers.
- 2026-08-20: Keep the demo card dataset validation in the release checklist so every referenced image and card identifier resolves before a scheduled portfolio run.
