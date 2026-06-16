# Useful SQL Queries

Useful queries for local testing.

---

## Active Subscribers

```sql
SELECT
    id,
    chat_id,
    username,
    first_name,
    is_active,
    created_at
FROM tarot_subscribers
WHERE is_active = TRUE
ORDER BY created_at DESC;
```

---

## Random Active Card

```sql
SELECT
    id,
    name_ru,
    image_file,
    image_url,
    suit
FROM tarot_cards
WHERE is_active = TRUE
ORDER BY random()
LIMIT 1;
```

---

## Today's Deliveries

```sql
SELECT
    d.delivery_date,
    s.username,
    s.first_name,
    c.name_ru AS card,
    d.status,
    d.created_at
FROM tarot_daily_deliveries d
LEFT JOIN tarot_subscribers s ON s.id = d.subscriber_id
LEFT JOIN tarot_cards c ON c.id = d.card_id
WHERE d.delivery_date = CURRENT_DATE
ORDER BY d.created_at DESC;
```

---

## Save Demo Delivery

```sql
INSERT INTO tarot_daily_deliveries (
    subscriber_id,
    card_id,
    delivery_date,
    caption,
    status
)
SELECT
    s.id,
    c.id,
    CURRENT_DATE,
    'Demo tarot card caption',
    'sent'
FROM tarot_subscribers s
CROSS JOIN tarot_cards c
WHERE s.chat_id = 'DEMO_CHAT_ID'
ORDER BY random()
LIMIT 1
ON CONFLICT (subscriber_id, delivery_date) DO NOTHING;
```

---

## Disable Subscriber

```sql
UPDATE tarot_subscribers
SET
    is_active = FALSE,
    updated_at = now()
WHERE chat_id = 'DEMO_CHAT_ID';
```
