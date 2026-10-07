CREATE SCHEMA IF NOT EXISTS fitness;

CREATE TABLE fitness.trainer (
    id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name text NOT NULL,
    specialization text NOT NULL,
    experience_years integer NOT NULL
);

CREATE TABLE fitness.membership_type (
    id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name text NOT NULL,
    duration_days integer NOT NULL,
    price numeric(10,2) NOT NULL
);

CREATE TABLE fitness.exercise (
    id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name text NOT NULL,
    muscle_group text NOT NULL,
    difficulty text NOT NULL
);

INSERT INTO fitness.trainer
    (name, specialization, experience_years)
VALUES
    ('Алексей Иванов', 'Фитнес-тренер', 5),
    ('Дмитрий Петров', 'Персональный тренер', 7),
    ('Анна Смирнова', 'Йога', 4),
    ('Мария Ким', 'Пилатес', 6),
    ('Сергей Волков', 'Бодибилдинг', 8),
    ('Елена Соколова', 'Фитнес', 3),
    ('Андрей Морозов', 'Кроссфит', 5),
    ('Ольга Кузнецова', 'Стретчинг', 4),
    ('Максим Орлов', 'Тяжёлая атлетика', 9),
    ('Наталья Белова', 'Йога', 6);

INSERT INTO fitness.membership_type
    (name, duration_days, price)
VALUES
    ('Пробный', 7, 5000.00),
    ('На месяц', 30, 20000.00),
    ('На 3 месяца', 90, 50000.00),
    ('На 6 месяцев', 180, 90000.00),
    ('Годовой', 365, 150000.00),
    ('Студенческий', 30, 15000.00),
    ('Утренний', 30, 12000.00),
    ('Безлимитный', 30, 25000.00),
    ('Персональный', 30, 40000.00),
    ('Выходного дня', 30, 10000.00);

INSERT INTO fitness.exercise
    (name, muscle_group, difficulty)
VALUES
    ('Приседания', 'Ноги', 'Средняя'),
    ('Жим лёжа', 'Грудь', 'Средняя'),
    ('Подтягивания', 'Спина', 'Высокая'),
    ('Отжимания', 'Грудь', 'Лёгкая'),
    ('Планка', 'Пресс', 'Лёгкая'),
    ('Становая тяга', 'Спина', 'Высокая'),
    ('Выпады', 'Ноги', 'Средняя'),
    ('Сгибание рук с гантелями', 'Бицепс', 'Лёгкая'),
    ('Разгибание рук на блоке', 'Трицепс', 'Средняя'),
    ('Жим гантелей вверх', 'Плечи', 'Средняя');
