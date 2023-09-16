def computepay(h, r):
    if h > 40:
        new = 1.5 * r
        pay = (40 * r) + (h - 40) * new
    else:
        pay = h * r

    return pay

hrs = int(input("Enter Hours:"))
rate = float(input("Enter Rate:"))
p = computepay(hrs,rate)
print("Pay", p)