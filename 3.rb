## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями
# (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и
# потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:
file = File.new('\data\3.txt','r:UTF-8')

codes = file.read.split("\n")
result = 0
for i in (0..(codes.length-1))
	helperCode = codes[i].split("\t")
	max = -1
	min = helperCode[0].to_i

	for j in (0..(helperCode.length-1))
		max = helperCode[j].to_i if max < helperCode[j].to_i
		min = helperCode[j].to_i if min > helperCode[j].to_i
	end
	result += max - min
end
puts result

