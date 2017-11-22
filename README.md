
## Anaconda Testing

Python Console
docker run -it docker-anaconda-opencv python


Run FaceDetect
docker run -it -v /Users/mikioshawa/projects/dockerfiles/docker-anaconda-opencv/app:/app docker-anaconda-opencv python /app/FaceDetect/face_detect.py /app/FaceDetect/clapton.jpg
