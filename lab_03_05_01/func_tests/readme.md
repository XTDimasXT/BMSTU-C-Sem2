# Тесты для лабораторной работы 03_05
## Входные данные
size_t rows
Количество строк в матрице
size_t cols
Количество столбцов в матрице
int matrix[][]
Матрица с элементами

## Выходные данные
int matrix[][]
Измененная матрица

### Позитивные тесты
- 01 - два элемента с суммой цифр больше 10
- 02 - три элемента с суммой цифр больше 10
- 03 - все элементы с суммой цифр больше 10
- 04 - только отрицательные
- 05 - отрицательные и нули

### Негативные тесты
- 01 - буквы вместо количества строк
- 02 - превышено количество строк
- 03 - буквы вместо количества столбцов
- 04 - превышено количество столбцов
- 05 - буквы вместо элементов матрицы
- 06 - нет элементов с суммой цифр больше 10