import cv2 as cv 
import numpy as np
 

img = cv.imread('Desktop/unnamed.jpg')
cv.imshow('deneme', img)

#GRAYSCALE 
gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
cv.imshow('grayed', gray)

#BLUR ksize arttıkça blur artar
blur = cv.GaussianBlur(img, (7,7), cv.BORDER_DEFAULT)
cv.imshow('blured',blur)

#EDGE CASCADE
canny = cv.Canny(blur, 125, 175)
cv.imshow('cannied',canny)

#DILADATED IMAGE
dilated = cv.dilate(canny, (7,7), iterations=3)
cv.imshow('dilated image', dilated)

#ERODING
eroded = cv.erode(dilated, (3,3), iterations=1)
cv.imshow('eroded image', eroded)

#RESIZE
resized = cv.resize(img, (500,500), interpolation=cv.INTER_CUBIC)
cv.imshow('resized',resized)

#CROPPING
cropped = img[0:200,0:200]
cv.imshow('cropped',cropped)

#TRANSLATION
def translate(img, x, y):
    transMat = np.float32([[1,0,x],[0,1,y]])
    dimensions = (img.shape[1], img.shape[0])
    return cv.warpAffine(img, transMat, dimensions)
    #-x left -y up x right y down 

translated = translate(img, 100, 100)
cv.imshow('translated', translated)
 

cv.waitKey(0)