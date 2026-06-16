-- Daily Tarot Card Bot
-- PostgreSQL demo schema
-- Safe public version. No real users, chats, tokens, or private data.

CREATE TABLE IF NOT EXISTS tarot_subscribers (
    id BIGSERIAL PRIMARY KEY,
    chat_id TEXT NOT NULL UNIQUE,
    username TEXT,
    first_name TEXT,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS tarot_cards (
    id BIGSERIAL PRIMARY KEY,
    name_ru TEXT NOT NULL UNIQUE,
    image_file TEXT NOT NULL,
    image_url TEXT NOT NULL,
    suit TEXT,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS tarot_daily_deliveries (
    id BIGSERIAL PRIMARY KEY,
    subscriber_id BIGINT REFERENCES tarot_subscribers(id) ON DELETE CASCADE,
    card_id BIGINT REFERENCES tarot_cards(id) ON DELETE SET NULL,
    delivery_date DATE NOT NULL DEFAULT CURRENT_DATE,
    caption TEXT,
    status TEXT NOT NULL DEFAULT 'sent',
    error_message TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    UNIQUE (subscriber_id, delivery_date)
);

CREATE INDEX IF NOT EXISTS idx_tarot_subscribers_active
    ON tarot_subscribers (is_active);

CREATE INDEX IF NOT EXISTS idx_tarot_cards_active
    ON tarot_cards (is_active);

CREATE INDEX IF NOT EXISTS idx_tarot_deliveries_date
    ON tarot_daily_deliveries (delivery_date DESC);
