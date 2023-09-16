def prefix(liste):
    length = len(liste)
    operators = []
    numbers = []

    for i in range(length // 2):
        operators.append(liste[i])
    for i in range(length-(length//2)-1,length):
        numbers.append(liste[i])

    result = 0
    counter = 0


    for i in operators[0]:
        if i == "+":
            result = numbers[counter] + numbers[counter+1]
            counter += 2
        elif i == "*":
            result = numbers[counter] * numbers[counter+1]
            counter += 2
        elif i == "%":
            result = numbers[counter] % numbers[counter + 1]
            counter += 2

    for i in range(1,len(operators)):
        if operators[i] == "+":
            result = result + numbers[counter]
            counter += 1
        elif operators[i] == "*":
            result = result * numbers[counter]
            counter += 1
        elif operators[i] == "%":
            result = result % numbers[counter]
            counter +=1


    return result
x=prefix([5, 7, "+"])
print(x)