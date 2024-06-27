# Vector3f_ud  
класс для хранения трехмерного вектора с компонентами x, y и z. Компоненты хранятся в виде чисел с плавающей точкой.

- **Vector3f()**  
Создает и возвращает новый объект вектора.


- **copy()**  Возвращает копию текущего объекта вектора.


- **z()**  Возвращает компонент z вектора.


- **z(value)**  Устанавливает компонент z вектора.


- **y()**  Возвращает компонент y вектора.


- **y(value)**  
Устанавливает компонент y вектора.


- **x()**  
Возвращает компонент x вектора.


- **x(value)**  
Устанавливает компонент x вектора.


- **scale(scale_factor)**  
Возвращает новый вектор, основанный на текущем, с масштабированной длиной и той же направленностью.


- **cross(vector)**  
Возвращает векторное произведение двух векторов.


- **dot(vector)**  
Возвращает скалярное произведение двух векторов.


- **is_zero()**  
Возвращает true, если все компоненты вектора равны нулю.


- **is_inf()**  
Возвращает true, если любой из компонентов вектора равен бесконечности.


- **is_nan()**  
Возвращает true, если любой из компонентов вектора равен NaN (не число).


- **normalize()**  
Нормализует вектор до единичной длины.


- **length()**  
Вычисляет длину вектора как sqrt(x^2 + y^2 + z^2).


- **angle(v2)**  
Вычисляет угол между текущим вектором и вектором v2.


- **rotate_xy(param1)**  
Поворачивает вектор на угол в радианах в плоскости xy, оставляя z неизменным.



- **xy()**  
Возвращает компоненты x и y текущего вектора как объект Vector2f.