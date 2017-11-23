
FROM continuumio/anaconda3

RUN apt-get install -y gtk+2.0 pkg-config
RUN apt-get install -y pandoc
RUN apt-get install -y --force-yes texlive-xetex

RUN conda update conda

#RUN conda install -y opencv
#RUN conda install --channel menpo opencv
RUN conda install -y -c loopbio -c conda-forge -c pkgw-forge gtk2 opencv

RUN mkdir /app

CMD jupyter notebook /app/notebooks --ip=0.0.0.0 --port=8888 --NotebookApp.token='' --no-browser --allow-root
