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
- [ ] Test with demo user.

---

## 4. Tarot Assets

- [ ] Add public demo image URLs or local card assets.
- [ ] Make sure image rights allow public usage.
- [ ] Do not include copyrighted card images unless allowed.

---

## 5. Delivery Test

- [ ] User starts bot.
- [ ] User becomes active.
- [ ] Schedule trigger runs.
- [ ] Random card is selected.
- [ ] Telegram photo + caption is sent.
- [ ] Delivery history is saved.
- [ ] Retry behavior is verified for a temporary Telegram delivery failure.
- [ ] Re-running the same scheduled batch does not send a duplicate card to the same user.
- [ ] Inactive users are excluded from scheduled delivery.

---

## 6. Before Publishing Publicly

- [ ] Search for tokens.
- [ ] Search for real `chat_id` values.
- [ ] Search for real `user_id` values.
- [ ] Search for webhook URLs.
- [ ] Search for `.env` files.
- [ ] Inspect screenshots manually.
