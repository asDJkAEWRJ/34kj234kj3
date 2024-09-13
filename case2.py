# Базовый класс "Растение"
class Plant:
    def __init__(self, name):
        self.name = name

    def grow(self):
        print(f"{self.name} растет.")

    def photosynthesize(self):
        print(f"{self.name} осуществляет фотосинтез.")

# Производный класс "Дерево", наследуется от класса "Растение"
class Tree(Plant):
    def __init__(self, name, height):
        super().__init__(name)
        self.height = height

    def grow(self):
        super().grow()
        self.height += 1
        print(f"Высота {self.name} увеличилась на 1 метр.")

    def shed_leaves(self):
        print(f"{self.name} сбрасывает листья.")

# Производный класс "Цветок", наследуется от класса "Растение"
class Flower(Plant):
    def __init__(self, name, color):
        super().__init__(name)
        self.color = color

    def bloom(self):
        print(f"{self.name} цветет. Цвет: {self.color}.")

# Создание объектов классов
plant = Plant("Растение")
tree = Tree("Дуб", 5)
flower = Flower("Роза", "красный")

# Вызов методов базового класса
plant.grow()
plant.photosynthesize()

print()

# Вызов методов производного класса "Дерево"
tree.grow()
tree.photosynthesize()
tree.shed_leaves()

print()

# Вызов методов производного класса "Цветок"
flower.grow()
flower.photosynthesize()
flower.bloom()