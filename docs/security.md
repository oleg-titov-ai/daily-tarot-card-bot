# 🔐 Security Notes

This repository is a public-safe demo / portfolio version of a Telegram tarot bot.

It must never contain real bot credentials, private user identifiers, webhook URLs, or personal user data.

---

## 🚫 Never Commit

Do not commit:

- Telegram bot token
- real Telegram `chat_id` values
- real Telegram `user_id` values
- real `.env` files
- n8n credentials
- production webhook URLs
- PostgreSQL passwords
- PostgreSQL connection strings with passwords
- private user messages
- database backups

---

## ✅ Safe Public Placeholders

Use placeholders like:

```text
DEMO_TELEGRAM_BOT_TOKEN
DEMO_CHAT_ID
DEMO_USER_ID
https://n8n.example.com/webhook/daily-tarot
CHANGE_ME_LOCALLY
```

---

## ✅ Safe Public Data

Safe to publish:

- demo tarot cards;
- public card image URLs;
- fake users;
- fake delivery history;
- placeholder webhook URLs;
- screenshots with private values hidden.

---

## 🧪 Before Making Repository Public

Search for:

```text
token
secret
password
credential
chat_id
user_id
webhook
.env
postgres
telegram
n8n
```

Also manually inspect screenshots before uploading them.

---

## 🧯 If a Secret Was Committed

If a real token, webhook URL, API key, or password was committed:

1. Revoke or rotate it immediately.
2. Replace it locally.
3. Remove it from repository files.
4. Treat the old secret as compromised.

Deleting the file from GitHub history is not enough.
