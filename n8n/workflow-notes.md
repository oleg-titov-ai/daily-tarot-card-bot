# n8n Workflow Notes

This file describes a safe public version of the real workflow from the uploaded n8n export.

The original workflow included production-specific fields and credentials. Do not publish the original export as-is.

---

## Real Workflow Summary

The uploaded workflow contains two branches:

```text
Telegram Trigger
        ↓
Send subscribe message
        ↓
Upsert subscriber in PostgreSQL
```

```text
Schedule Trigger
        ↓
Select subscribers from PostgreSQL
        ↓
Pick random tarot card
        ↓
Generate short card description with LLM
        ↓
Build Rider-Waite image URL
        ↓
Send Telegram photo + caption
```

---

## Sensitive Fields Removed From Public Version

Remove before publishing:

- Telegram credential IDs;
- PostgreSQL credential IDs;
- OpenRouter / LLM credential IDs;
- webhook IDs;
- instance ID;
- version ID;
- production workflow ID;
- real table names if they expose private infrastructure.

---

## Public Demo Workflow Nodes

Recommended safe demo node names:

```text
Telegram Trigger
Send Subscribe Message
Upsert Demo Subscriber
Daily Schedule Trigger
Select Active Subscribers
Random Tarot Card
Generate Card Meaning
Prepare Telegram Photo Payload
Send Daily Card
```

---

## Prompt Used For Card Meaning

```text
You are a tarot-style reflection writer.
Card of the day: {{ card }}.

Write a short daily reflection in Russian.
Format:
- exactly 3 short paragraphs;
- emotional but not manipulative;
- no predictions treated as facts;
- no medical, legal, financial or psychological advice;
- include 2-3 emojis per paragraph.
```

---

## Rider-Waite Images

The workflow uses public Wikimedia Commons `Special:FilePath` links.

Example:

```text
https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_19_Sun.jpg
```

---

## Safety Note

This bot should be presented as entertainment and self-reflection only.
