# Ambiente 

Esta imagem contém um ambiente Alpine focado em GLIBC com os seguintes itens instalados:

* GLIBC_2.34
* tesseract
* devtoolset-7
* openCv



## Como criar a imagem: 

```docker build -t NOME-DA-SUA-IMAGEM .```

## Como rodar os comandos dentro de um terminal:

```docker run -it NOME-DA-SUA-IMAGEM /bin/sh```