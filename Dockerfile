
FROM continuumio/anaconda3

RUN conda install -y opencv
RUN mkdir /app


