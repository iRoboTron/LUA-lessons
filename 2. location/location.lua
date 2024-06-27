local loc = Location()

gcs:send_text(0, "Широта (lat): " .. loc:lat())
gcs:send_text(0, "Долгота (lng): " .. loc:lng())
gcs:send_text(0, "Высота (alt): " .. loc:alt() .. " cm.")

gcs:send_text(0, "Высота относительно дома: " .. loc:relative_alt())
gcs:send_text(0, "Высота относительно местности: " .. loc:terrain_alt())
gcs:send_text(0, "Высота относительно уровня моря: " .. loc:origin_alt())


-- Функция для отправки информационного сообщения на GCS
function send_info(message)
    gcs:send_text(6, "Info: " .. message) -- Уровень 6 используется для информационных сообщений
end

-- Функция для вывода информации о местоположении
function pint_location(loc)
    -- Отправка широты, долготы и высоты
    send_info("Широта (lat): " .. loc:lat())
    send_info("Долгота (lng): " .. loc:lng())
    send_info("Высота (alt): " .. loc:alt() .. " cm.") -- Высота в сантиметрах

    -- Отправка дополнительной информации о высоте
    send_info("Высота: " .. loc:get_alt_frame())
    send_info("Высота относительно дома: " .. loc:relative_alt())
    send_info("Высота относительно местности: " .. loc:terrain_alt())
    send_info("Высота относительно уровня моря: " .. loc:origin_alt())
end

-- Создание объекта Location и вывод информации о нем
local loc1 = Location()
pint_location(loc1)

-- Копирование loc1 и сдвиг на восток на 200 метров
local loc2 = loc1:copy()
local bearing_deg = 45 -- направление в горизонте: 0-север, 90-восток, 180-юг, 270-запад
local distance = 200    -- расстояние в метрах
loc2:offset_bearing(bearing_deg, distance)
pint_location(loc2)

-- Копирование loc1 и сдвиг с углом наклона вверх на 15 градусов
local pitch_deg = 15 -- угол наклона: +15 вверх, -15 вниз
loc2 = loc1:copy()
loc2:offset_bearing_and_pitch(bearing_deg, pitch_deg, distance)
pint_location(loc2)

-- Копирование loc1 и сдвиг на север и восток на заданные расстояния
local ofs_north = 300
local ofs_east = 500
loc2 = loc1:copy()
loc2:offset(ofs_north, ofs_east)  -- Исправление: должно быть offset_ned
pint_location(loc2)


local dist = loc1:get_distance(loc2)
send_info("get_distance(): " .. dist)

local dist_NE = loc1:get_distance_NE(loc2)
send_info("get_distance_NE(): " .. dist_NE:length())

local dist_NED = loc1:get_distance_NED(loc2)
send_info("get_distance_NED(): " .. dist_NE:length())