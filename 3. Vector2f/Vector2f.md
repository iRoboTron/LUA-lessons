# Vector2f_ud 
класс для хранения двумерного вектора с компонентами x и y. Компоненты хранятся в виде чисел с плавающей точкой.

- **Vector2f()**  
Создает и возвращает новый объект вектора.


- **copy()**  
Возвращает копию текущего объекта вектора.


- **y()**  
Возвращает компонент y вектора.


- **y(value)**  
Устанавливает компонент y вектора.


- **x()**  
Возвращает компонент x вектора.


- **x(value)**  
Устанавливает компонент x вектора.


- **rotate(angle_rad)**  
Поворачивает вектор на указанный угол в радианах.


- **is_zero()**  
Возвращает true, если оба компонента вектора равны нулю.


- **is_inf()**  
Возвращает true, если один из компонентов вектора равен бесконечности.


- **is_nan()**  
Возвращает true, если один из компонентов вектора равен NaN (не число).


- **normalize()** 
Нормализует вектор до единичной длины.


- **length()**  
Вычисляет длину вектора как sqrt(x^2 + y^2).


- **angle()**  
Вычисляет угол вектора в радианах по формуле 2PI + atan2(-x, y).