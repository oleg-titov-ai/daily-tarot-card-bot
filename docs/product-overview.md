# Product Overview

## What the Bot Does

Daily Tarot Card Bot is a scheduled Telegram experience that sends one random tarot card every morning together with an image, a short meaning, and a reflection prompt.

The project is positioned as an entertainment and self-reflection product, not as a professional advisory service.

## User Journey

```text
User subscribes
      ↓
subscriber is saved in PostgreSQL
      ↓
scheduled n8n workflow starts
      ↓
random card is selected
      ↓
image and meaning are prepared
      ↓
Telegram message is delivered
      ↓
delivery result is logged
```

## Core Modules

- Telegram subscription flow;
- PostgreSQL subscriber storage;
- scheduled n8n workflow;
- random card selection;
- card image and text dataset;
- daily message delivery;
- delivery history;
- safe demo configuration.

## Product Use Cases

- personal daily reflection;
- entertainment bot for Telegram communities;
- content automation template;
- scheduled messaging demo;
- white-label spiritual or lifestyle content bot;
- portfolio example of n8n + Telegram + PostgreSQL automation.

## Reliability Considerations

A production version should include:

- duplicate-delivery protection;
- timezone-aware scheduling;
- retry logic;
- disabled-user handling;
- delivery status logging;
- fallback text when an image is unavailable;
- idempotent daily message generation.

## Portfolio Value

The project demonstrates:

- scheduled workflows;
- Telegram Bot API integration;
- PostgreSQL subscriber management;
- randomized content selection;
- media message delivery;
- delivery logging;
- secure credential handling.

## Next Steps

1. add per-user delivery time;
2. add multilingual card meanings;
3. add card history to avoid immediate repeats;
4. add subscription pause and resume commands;
5. add admin delivery statistics;
6. add automated workflow tests.

## Disclaimer

The bot is intended for entertainment and self-reflection only. It does not provide medical, legal, financial, psychological, or professional advice.
