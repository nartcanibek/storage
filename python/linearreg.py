import pandas as pd
import matplotlib.pyplot as plt

data = pd.read_csv('C:/Users/nartc/Downloads/500_Person_Gender_Height_Weight_Index.csv')



def gradient_descent_height(m_now, b_now, points, L):
    m_gradient = 0
    b_gradient = 0
    n = len(points)

    for i in range(n):
        x = points.iloc[i].Height
        y = points.iloc[i].Index

        m_gradient += -(2/n) * x * (y - (m_now*x + b_now))
        b_gradient += -(2/n) * (y - (m_now*x + b_now))

    m = m_now - m_gradient * L 
    b = b_now - b_gradient * L 

    return m,b

def gradient_descent_weight(m_now, b_now, points, L):
    m_gradient = 0
    b_gradient = 0
    n = len(points)

    for i in range(n):
        x = points.iloc[i].Weight
        y = points.iloc[i].Index

        m_gradient += -(2/n) * x * (y - (m_now*x + b_now))
        b_gradient += -(2/n) * (y - (m_now*x + b_now))

    m = m_now - m_gradient * L 
    b = b_now - b_gradient * L 

    return m,b

m1 = 1
m2 = 2
b = 0
L = 0.000005
epochs = 100

for i in range(epochs):
    m1, b1 = gradient_descent_height(m1, b, data, L)
    m2, b2 = gradient_descent_weight(m2, b, data, L)

    b = b1+b2

    line = m1 * x + m2 * y + b
    


print(m1,b)



#plt.scatter(data.Index ,color ='black')
plt.plot(list(range(20,80)), [m1 * x + m2 * y + b for x in range(60,200) for y in range(40,180)],color = 'red')

