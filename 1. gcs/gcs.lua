-- Отправка различных уровней текстовых сообщений на наземную станцию управления (GCS)

gcs:send_text(0, "0 - Emergency")  -- Уровень 0: Чрезвычайная ситуация
gcs:send_text(1, "1 - Alert")      -- Уровень 1: Тревога
gcs:send_text(2, "2 - Critical")   -- Уровень 2: Критическая ошибка
gcs:send_text(3, "3 - Error")      -- Уровень 3: Ошибка
gcs:send_text(4, "4 - Warning")    -- Уровень 4: Предупреждение
gcs:send_text(5, "5 - Notice")     -- Уровень 5: Уведомление
gcs:send_text(6, "6 - Info")       -- Уровень 6: Информация
gcs:send_text(7, "7 - Debug")      -- Уровень 7: Отладка

-- Функция для отправки информационного сообщения на GCS
function send_info(message)
    gcs:send_text(6, "Info: " .. message)  -- Уровень 6 используется для информационных сообщений
end

send_info("Hello world!")  -- Пример использования функции send_info для отправки сообщения "Hello world!"

-- Функция для отправки отладочного сообщения на GCS с необязательным префиксом
function send_debug(message, prefix)
    prefix = prefix or "Debug: "  -- Если префикс не указан, использовать "Debug: " по умолчанию
    gcs:send_text(7, prefix .. message)  -- Уровень 7 используется для отладочных сообщений
end

-- Пример использования функции send_debug с сообщением "My Message 1" и префиксом по умолчанию
send_debug("My Message 1") -- Debug: My Message 1

-- Пример использования функции send_debug с сообщением "My Message 2" и префиксом "Test: "
send_debug("My Message 2", "Test: ") -- Test: My Message 2

