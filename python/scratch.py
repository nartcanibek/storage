import numpy as np 

def PrimeCheck(num):

    flag = True

    # prime numbers are greater than 1
    if num > 1.0:
        # check for factors
        for i in np.arange(2.0, num,1.0):
            if (num % i) == 0.0:
                # if factor is found, set flag to True
                flag = False
                # break out of loop
                break

    return flag 

stat = PrimeCheck(3) 

print(stat)