import cv2 as cv 
import numpy as np 

#blank = np.zeros((500,500,3), dtype = 'uint8')
#cv.imshow('Blank',blank)
img = cv.imread('Desktop/unnamed.jpg')
cv.imshow('deneme', img)

#blank[200:300,300:400] = 0,255,0
#cv.imshow('Green',blank)

#cv.rectangle(blank, (0,0), (250,250), (0,255,0), thickness=-1)
#cv.imshow('Rectangle',blank)


#cv.rectangle(blank, (0,0), (blank.shape[1]//3, blank.shape[0]//3), (0,255,0), thickness=-1)
#cv.imshow('Rectangle',blank)

# cv.circle ...
# cv.line

#TEXT

#cv.putText(blank,'hello',(0,225), cv.FONT_HERSHEY_TRIPLEX, 0.5, (0,255,0), 2)
#cv.imshow('TEXT',blank)



cv.waitKey(0)