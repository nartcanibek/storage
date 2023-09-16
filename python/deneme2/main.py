hrs = input("Enter Hours:")
h = float(hrs)
y = input("Enter rate:")
x = float(y)
if h > 40:
    new=1.5*x
    pay=(40*x)+(h-40)*new
else :
    pay=h*x

print(pay)