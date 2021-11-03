## Задача №1:
#
# Джон Макклейн пытается найти этаж на котором заложена бомба и у него есть список инструкций (в файле data/1.txt):
#
# (- Джон должен подняться на этаж выше
# ) - Джон должен опуститься на этаж ниже
#
# Поиск начинается с нулевого этажа. 
#
# На каком этаже находится бомба?
#
## Требования к решению:
# - Входные данные находятся в файле data/1.txt
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:
file = require File.expand_path("../data/1.txt", __FILE__) #File.new("../data/1.txt")
instructions = file.read

stage = 0
for i in (0..instructions.length)
	stage += 1 if instructions[i] == '('
	stage -= 1 if instructions[i] == ')'
end
file.close
puts stage #232


