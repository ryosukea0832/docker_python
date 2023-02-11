FROM python:3
USER root

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

RUN apt-get install -y gcc
RUN apt-get install -y vim less
RUN apt-get install -y ffmpeg
RUN apt-get install -y zbar-tools
RUN apt-get install -y libzbar0
RUN apt-get install -y python3-tk

RUN python -m pip install --upgrade pip

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
#RUN pip install --upgrade requests==2.22.0 
#RUN pip install --upgrade beautifulsoup4==4.8.1
RUN pip install --upgrade ffmpeg-python
#RUN pip install --upgrade SpeechRecognition
#RUN pip install --upgrade numpy
#RUN pip install --upgrade pandas
#RUN pip install --upgrade pillow
#RUN pip install --upgrade qrcode
#RUN pip install --upgrade pyzbar
#RUN pip install --upgrade Flask-QRcode
#RUN pip install --upgrade pywebcopy
RUN pip install --upgrade PyQt5
RUN pip install --upgrade pyinstaller
RUN pip install --upgrade qtpy
#RUN pip install --upgrade pypiwin32
#RUN pip install --upgrade hogehoge 
#RUN pip install --upgrade fugafuga 
#RUN pip install --upgrade sukosuko



RUN python -m pip install jupyterlab

