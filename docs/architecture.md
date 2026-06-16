# 🧩 Architecture

Daily Tarot Card Bot is built around a scheduled delivery flow.

---

## Main Flow

```text
Schedule Trigger
        ↓
Select Active Users
        ↓
Pick Random Tarot Card
        ↓
Load Card Image + Meaning
        ↓
Send Telegram Photo + Caption
        ↓
Save Delivery History
```

---

## Components

### Schedule Trigger

Runs every morning at a configured time.

Example:

```text
09:00 Europe/Amsterdam
```

---

### Active Users

The bot sends cards only to users marked as active.

A user becomes active after starting the Telegram bot.

---

### Tarot Card Dataset

Cards can be stored in:

- PostgreSQL table;
- JSON file;
- local assets folder;
- external image URL source.

Public demo data should contain only example cards and public image URLs.

---

### Random Card Selection

The workflow chooses one random card per user per day.

The same card may appear again on another day.

---

### Telegram Delivery

The bot sends:

- card image;
- card name;
- short meaning;
- reflection / advice for the day;
- entertainment disclaimer.

---

### Delivery History

The system stores delivery history to avoid duplicate daily messages and to show past cards if needed.
