FROM ubuntu:16.04

#Atualizado
RUN apt-get update

#Instalando Curl
RUN apt-get -y install curl

#Instalando Pip
RUN apt-get -y install python-setuptools python-dev build-essential libfontconfig
RUN easy_install pip

#Instalando Node
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get -y install nodejs
RUN apt-get install build-essential

#Configurando nodejs
RUN ln -s /usr/bin/nodejs /usr/bin/node

#Instalando NPM
RUN apt-get -y install npm

#Instalando PhantamJS
RUN npm install -g phantomjs-prebuilt
RUN npm install -g phantomjs

#Instalando Chromium
RUN apt-get install -y chromium-browser

COPY ./requirements.txt /home/requirements.txt
RUN pip install -r /home/requirements.txt
