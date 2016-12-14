FROM ubuntu:15.10

#Atualizado
RUN apt-get update

#Instalando Pip
RUN sudo apt-get -y install python-setuptools python-dev build-essential libfontconfig
RUN sudo easy_install pip

#Instalando Node
RUN sudo apt-get -y install nodejs

#Configurando nodejs
RUN ln -s /usr/bin/nodejs /usr/bin/node

#Instalando Configurando nodejs-legacy
RUN apt-get -y install nodejs-legacy

#Instalando NPM
RUN sudo apt-get -y install npm

#Instalando PhantamJS
RUN sudo npm install -g phantomjs-prebuilt
RUN sudo npm install -g phantomjs

#Instalando Chromium
RUN sudo apt-get install chromium-browser

COPY ./requirements.txt /home/requirements.txt
RUN pip install -r /home/requirements.txt
