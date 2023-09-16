from string import hexdigits
import cv2 as cv

img = cv.imread('Desktop/unnamed.jpg')

cv.imshow('deneme',img)

def rescaleFrame(frame, scale = 0.75):
    width = int(frame.shape[1]*scale)
    height = int(frame.shape[0]*scale)
    dimensions = (width,height)

    return cv.resize(frame, dimensions, interpolation=cv.INTER_AREA)


def changeRes(width,height):
    #live video
    capture.set(3,width)
    capture.set(4,height)



resized_image = rescaleFrame(img)
cv.imshow('Image', resized_image)


capture = cv.VideoCapture('Desktop/Forest.mp4')
while True:
    isTrue, frame = capture.read()

    frame_resized = rescaleFrame(frame)

    cv.imshow('Video', frame)   
    cv.imshow('Video Resized', frame_resized)   
    if cv.waitKey(20) & 0xFF == ord('d'):
        break 


capture.release()
cv.destroyAllWindows()
