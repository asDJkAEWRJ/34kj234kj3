# Ввод размерности массива N
N = int(input("Введите размерность массива: "))

# Ввод элементов массива A
A = []
for i in range(N):
    element = int(input(f"Введите элемент {i+1}: "))
    A.append(element)

# Нахождение индексов максимального и минимального элементов
max_index = A.index(max(A))
min_index = A.index(min(A))

# Вычисление суммы отрицательных элементов между max и min
negative_sum = 0
start_index = min(max_index, min_index) + 1
end_index = max(max_index, min_index)

for i in range(start_index, end_index):
    if A[i] < 0:
        negative_sum += A[i]

# Вывод результата
print("Сумма отрицательных элементов между максимальным и минимальным элементами:", negative_sum)