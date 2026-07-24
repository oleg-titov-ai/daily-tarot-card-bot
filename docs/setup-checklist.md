# ✅ Setup Checklist

Use this checklist to configure the bot safely.

---

## 1. Telegram Bot

- [ ] Create a Telegram bot using BotFather.
- [ ] Save the bot token locally only.
- [ ] Add the token to local `.env`.
- [ ] Do not commit real bot token.

---

## 2. PostgreSQL

- [ ] Create PostgreSQL database.
- [ ] Run `sql/001_schema.sql`.
- [ ] Load demo cards from `sql/002_demo_data.sql`.
- [ ] Verify active users and cards.

---

## 3. n8n Workflow

- [ ] Import workflow locally.
- [ ] Configure Telegram credentials locally.
- [ ] Configure PostgreSQL credentials locally.
- [ ] Set daily schedule trigger.
- [ ] Verify the workflow timezone before enabling the schedule.
- [ ] Confirm only one active schedule trigger can send the daily batch.
- [ ] Confirm the schedule can be disabled without deleting workflow configuration.
- [ ] Test with demo user.

---

## 4. Tarot Assets

- [ ] Add public demo image URLs or local card assets.
- [ ] Make sure image rights allow public usage.
- [ ] Do not include copyrighted card images unless allowed.
- [ ] Verify a text-only fallback is used when an image asset is unavailable.
- [ ] Validate that every demo card has a unique ID and non-empty meaning text.
- [ ] Confirm every active demo card references an available image or the documented fallback.
- [ ] Confirm card titles, meanings, and fallback text use the same configured locale.
- [ ] Verify random selection excludes inactive or incomplete card records.

---

## 5. Delivery Test

- [ ] User starts bot.
- [ ] User becomes active.
- [ ] Schedule trigger runs.
- [ ] Random card is selected.
- [ ] Telegram photo + caption is sent.
- [ ] Verify generated captions stay within Telegram's supported caption length.
- [ ] Verify card titles and meanings render correctly with the configured Telegram parse mode.
- [ ] Delivery history is saved.
- [ ] Retry behavior is verified for a temporary Telegram delivery failure.
- [ ] Confirm delivery retries have a finite attempt limit and visible final status.
- [ ] Re-running the same scheduled batch does not send a duplicate card to the same user.
- [ ] Confirm each scheduled batch uses a stable identifier for duplicate protection.
- [ ] Include the stable batch identifier in non-sensitive completion logs for troubleshooting.
- [ ] Confirm the delivery record is written only after Telegram accepts the message.
- [ ] Confirm concurrent workers cannot send two cards to the same user for one batch.
- [ ] Confirm the saved delivery timestamp uses the workflow's configured timezone.
- [ ] Confirm one user's delivery failure does not stop delivery attempts for other active users.
- [ ] Inactive users are excluded from scheduled delivery.
- [ ] Confirm paused subscribers remain excluded after a workflow restart.
- [ ] An empty active-user list completes without an error or outbound message.
- [ ] Verify delivery audit records contain card and status references but no private message text.
- [ ] Confirm delivery history is queried in deterministic timestamp order during audits.
- [ ] Record total batch duration so unusually slow deliveries are visible during testing.
- [ ] Confirm delivery status moves forward only and a completed send cannot return to pending.
- [ ] Verify the same delivery key cannot create more than one successful audit record.
- [ ] Verify Telegram rate-limit responses pause the batch and resume without duplicate sends.
- [ ] Confirm pending delivery backlog is visible before starting the next scheduled batch.
- [ ] Confirm missing localized text falls back to the documented default locale.
- [ ] Verify an image download timeout uses the documented text-only fallback without blocking the batch.
- [ ] Record sent, skipped, retried, and failed counts in a non-sensitive batch completion summary.
- [ ] Track time from scheduled batch start to Telegram acceptance so abnormal delivery latency is visible.

---

## 6. Before Publishing Publicly

- [ ] Search for tokens.
- [ ] Search for real `chat_id` values.
- [ ] Search for real `user_id` values.
- [ ] Search for webhook URLs.
- [ ] Search for `.env` files.
- [ ] Inspect screenshots manually.