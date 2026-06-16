# 🔮 Daily Tarot Card Bot

Telegram bot that sends a random daily tarot card every morning with an image, meaning, and short reflection.

> This project is for entertainment and self-reflection purposes only. It does not provide professional, medical, legal, financial, or psychological advice.

## 🇬🇧 Short Description

**Daily Tarot Card Bot** is a simple Telegram automation project.

Every morning, the bot selects a random tarot card, sends the card image, explains the meaning, and gives the user a short reflection for the day.

The project is designed as a portfolio-ready automation template built with **Telegram Bot API, n8n, PostgreSQL, and scheduled workflows**.

---

## 🇷🇺 Краткое описание

**Daily Tarot Card Bot** — это простой Telegram-бот с ежедневной картой Таро.

Каждое утро бот выбирает случайную карту, отправляет изображение, краткое значение карты и небольшой совет дня.

Проект подготовлен как портфолио-шаблон автоматизации на базе **Telegram Bot API, n8n, PostgreSQL и scheduled workflows**.

---

## ✨ Features

- Daily scheduled tarot card delivery
- Random card selection
- Card image + caption
- Short meaning and reflection
- PostgreSQL user and delivery history
- Safe demo configuration
- No payments or subscriptions
- No personal predictions stored publicly

---

## 🧩 Architecture

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

More details: [`docs/architecture.md`](docs/architecture.md)

---

## 🛠️ Tech Stack

- Telegram Bot API
- n8n
- PostgreSQL
- Scheduled workflow
- JSON card dataset
- Image URLs / local assets

---

## 📁 Repository Structure

```text
daily-tarot-card-bot/
├── README.md
├── LICENSE
├── .gitignore
├── .env.example
├── docs/
│   ├── architecture.md
│   ├── setup-checklist.md
│   ├── security.md
│   ├── legal-disclaimer.md
│   └── demo-screenshots.md
├── sql/
│   ├── 001_schema.sql
│   ├── 002_demo_data.sql
│   └── 003_queries.md
├── n8n/
│   ├── workflow-notes.md
│   └── workflow-placeholder.json
├── bot/
│   ├── telegram-message-examples.md
│   └── tarot-cards-demo.json
└── assets/
    └── README.md
```

---

## ⚙️ Setup Outline

1. Create a Telegram bot.
2. Create PostgreSQL database.
3. Run SQL schema.
4. Import the n8n workflow locally.
5. Configure Telegram credentials locally.
6. Configure the schedule trigger.
7. Add active users.
8. Test daily card delivery.

---

## 🔐 Security Notes

Never commit:

- Telegram bot token
- real `chat_id` values
- real `user_id` values
- `.env` files with real values
- n8n credentials
- production webhook URLs
- private user messages

Use `.env.example` with placeholders only.

See: [`docs/security.md`](docs/security.md)

---

## ⚖️ Disclaimer

This bot is for entertainment and self-reflection only.

It does not provide professional, medical, legal, financial, psychological, or spiritual guarantees.

See: [`docs/legal-disclaimer.md`](docs/legal-disclaimer.md)

---

## 📌 Project Tagline

**English:**  
Telegram bot that sends a random daily tarot card with an image, meaning and short reflection.

**Russian:**  
Telegram-бот, который каждое утро отправляет случайную карту Таро с картинкой, значением и коротким советом дня.
