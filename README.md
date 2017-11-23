
## Anaconda Testing

### Build docker
docker build -t docker-anaconda-opencv .

### Python Console
docker run -it docker-anaconda-opencv python

### Bash Console
docker run -it -v /Users/mikioshawa/projects/dockerfiles/docker-anaconda-opencv/app:/app docker-anaconda-opencv bash

### Jupyter Daemon 
docker run -it -d -p 8888:8888 -v /Users/mikioshawa/projects/dockerfiles/docker-anaconda-opencv/app:/app docker-anaconda-opencv

### Run FaceDetect
docker run -it -v /Users/mikioshawa/projects/dockerfiles/docker-anaconda-opencv/app:/app docker-anaconda-opencv python /app/FaceDetect/face_detect.py /app/FaceDetect/clapton.jpg


http://gihyo.jp/dev/feature/01/opencv/0004?page=3
https://www.pro-s.co.jp/engineerblog/opencv/post_6471.html

### opencv_createsamples
docker run -it -v /Users/mikioshawa/projects/dockerfiles/docker-anaconda-opencv/app:/app docker-anaconda-opencv opencv_createsamples -img /app/IconDetect/gihyo_logo.PNG -vec /app/IconDetect/pos_gihyo.vec -num 4000 -bgcolor 255 -w 44 -h 18

### opencv_traincascade
docker run -it -v /Users/mikioshawa/projects/dockerfiles/docker-anaconda-opencv/app:/app docker-anaconda-opencv opencv_traincascade -data /app/IconDetect/gihyo_logo -vec /app/IconDetect/pos_gihyo.vec -bg /app/IconDetect/NG.txt -numPos 3000 -numNeg 1500  -w 44 -h 18 -mode ALL

### Run ItemDetect
docker run -it -v /Users/mikioshawa/projects/dockerfiles/docker-anaconda-opencv/app:/app docker-anaconda-opencv python /app/IconDetect/icon_detect.py /app/IconDetect/Test/IMG_0532.jpg
