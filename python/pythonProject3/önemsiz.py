largest = None
smallest = None

while True:

    num = input("Enter a number: ")
    #print(num)
    if num == "done" : break
    try:
        a = int(num)
    except:
        print("Invalid input")
    else:
        if smallest is None:
            smallest = int(num)
        if largest is None:
            largest = int(num)
        elif int(num) < int(smallest) : smallest = num

        if int(num) > int(largest) : largest = num


print("Maximum is", largest)
print("Minimum is", smallest)