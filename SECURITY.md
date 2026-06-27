# Security Policy

## Scope

Daily Tarot Card Bot is a public portfolio automation project. It must use demo data and placeholders only.

## Sensitive Data That Must Not Be Committed

- Telegram bot tokens;
- real chat IDs;
- real user IDs;
- `.env` files with real values;
- n8n credentials;
- production webhook URLs;
- private user messages;
- real subscriber exports;
- database passwords.

## Safe Demo Data

Use demo card data, placeholder users, and example configuration only. Public screenshots should not expose private Telegram chats or real user identifiers.

## Reporting a Security Issue

Open a GitHub issue with a safe description. Do not include tokens, private messages, production URLs, or database credentials.

## User Privacy

A production version should store only the minimum required user data, support unsubscribe flows, and avoid publishing message history or subscriber data.
