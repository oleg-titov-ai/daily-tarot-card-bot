-- Daily Tarot Card Bot
-- Demo data only. No real users or chats.

INSERT INTO tarot_subscribers (chat_id, username, first_name, is_active)
VALUES ('DEMO_CHAT_ID', 'demo_user', 'Demo User', TRUE)
ON CONFLICT (chat_id) DO UPDATE
SET
    username = EXCLUDED.username,
    first_name = EXCLUDED.first_name,
    is_active = EXCLUDED.is_active,
    updated_at = now();

INSERT INTO tarot_cards (name_ru, image_file, image_url, suit)
VALUES
('Шут', 'RWS_Tarot_00_Fool.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_00_Fool.jpg', 'major'),
('Маг', 'RWS_Tarot_01_Magician.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_01_Magician.jpg', 'major'),
('Верховная Жрица', 'RWS_Tarot_02_High_Priestess.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_02_High_Priestess.jpg', 'major'),
('Императрица', 'RWS_Tarot_03_Empress.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_03_Empress.jpg', 'major'),
('Император', 'RWS_Tarot_04_Emperor.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_04_Emperor.jpg', 'major'),
('Верховный Жрец', 'RWS_Tarot_05_Hierophant.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_05_Hierophant.jpg', 'major'),
('Влюбленные', 'RWS_Tarot_06_Lovers.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_06_Lovers.jpg', 'major'),
('Колесница', 'RWS_Tarot_07_Chariot.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_07_Chariot.jpg', 'major'),
('Сила', 'RWS_Tarot_08_Strength.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_08_Strength.jpg', 'major'),
('Отшельник', 'RWS_Tarot_09_Hermit.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_09_Hermit.jpg', 'major'),
('Колесо Фортуны', 'RWS_Tarot_10_Wheel_of_Fortune.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_10_Wheel_of_Fortune.jpg', 'major'),
('Справедливость', 'RWS_Tarot_11_Justice.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_11_Justice.jpg', 'major'),
('Повешенный', 'RWS_Tarot_12_Hanged_Man.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_12_Hanged_Man.jpg', 'major'),
('Смерть', 'RWS_Tarot_13_Death.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_13_Death.jpg', 'major'),
('Умеренность', 'RWS_Tarot_14_Temperance.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_14_Temperance.jpg', 'major'),
('Дьявол', 'RWS_Tarot_15_Devil.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_15_Devil.jpg', 'major'),
('Башня', 'RWS_Tarot_16_Tower.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_16_Tower.jpg', 'major'),
('Звезда', 'RWS_Tarot_17_Star.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_17_Star.jpg', 'major'),
('Луна', 'RWS_Tarot_18_Moon.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_18_Moon.jpg', 'major'),
('Солнце', 'RWS_Tarot_19_Sun.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_19_Sun.jpg', 'major'),
('Страшный Суд', 'RWS_Tarot_20_Judgement.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_20_Judgement.jpg', 'major'),
('Мир', 'RWS_Tarot_21_World.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/RWS_Tarot_21_World.jpg', 'major'),
('Туз Жезлов', 'Wands01.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/Wands01.jpg', 'wands'),
('Туз Кубков', 'Cups01.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/Cups01.jpg', 'cups'),
('Туз Мечей', 'Swords01.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/Swords01.jpg', 'swords'),
('Туз Пентаклей', 'Pents01.jpg', 'https://commons.wikimedia.org/wiki/Special:FilePath/Pents01.jpg', 'pentacles')
ON CONFLICT (name_ru) DO UPDATE
SET
    image_file = EXCLUDED.image_file,
    image_url = EXCLUDED.image_url,
    suit = EXCLUDED.suit,
    is_active = TRUE;
