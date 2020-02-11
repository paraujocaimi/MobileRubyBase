# Etapas para rodar o projeto 

## 01. Android Studio 

1. Instalar o android studio https://developer.android.com/studio/index.html?hl=pt-br 
2. Configurar o JAVA_HOME e ANDROID_HOME

## 02. Ruby 

1. Instalar o Ruby https://rubyinstaller.org/downloads/ com a versão mais estável 

2. Após instalar verificar a versão do ruby 
```
ruby --version
```
3. Pelo cmd instalar o pacote adicionar do ruby com o comando e selecionar a opção 3 

```
ridk install
``` 

4. Instalar bundler pelo cmd 

```
gem install bundler
``` 

5. verificar versão do bundler 

```
bundler --version
```

## 03. Emulador
1. Realizar download do Genymotion com o virtualBox https://www.genymotion.com/download/

## 04. Appium - windows

1. Na raiz do computador criar a pasta para o projeto 
```
C:\nome da pasta\
```
2. Criar a pasta do appium dentro da pasta criada
```
C:\nome da pasta do projeto\adicionar
```
3. Instalar o appium e appium-doctor como admin 
```
npm install -g appium
npm install -g appium-doctor 
```
4. inserir o comando bundler install para adicionar todas as dependencias vinculadas ao arquivo Gemfile

5. remover o pacote eventmachine para instalar corretamente 
```
gem uninstall eventmachine
```
6. instalar pacote corretamente
```
gem install eventmachine --platform ruby
```
7. Após realizar a instalação de todos as dependencias necessárias rodar o 
``` 
appium-doctor --android
```
para verificar se não está faltando nada no computador .

## 05. Subir aplicação 

1. Abrir o Genymotion e esperar carregar o device 

1.1 O comando ```adb devices``` no prompt irá dar o id do device emulado pelo genymotion, necessário para utilizar no arquivo ```appium.tx``` do step 3.

2. Dentro do projeto existe a pasta apk que contém o  apk para ser realizado o teste.

3. No arquivo appium.txt, possui todas as caps necessárias para subir a aplicação 

4. Com o comando ```appium``` pelo cmd a aplicação irá subir 

5. Pelo cmd dentro da pasta que está o arquivo appium.txt e o apk,inserir o comando 
```
Arc
```

## 06. Rodar Cenarios


1. Para rodar um cenário especifico, é só adicionar a @tag do projeto 

```
cucumber -t @tag 
```

2. Para rodar todos os cenários 

```
cucumber
```

# Como escrever novos cenários 

1. Pela linha de comando na raiz do projeto escreva o comando a baixo, ele irá criar a estrutura de pastas, para a escrita do cenário

```
cucumber --init
``` 

2. Para receber os steps prontos, após criar a feature apenas digite no cmd o comando abaixo no cmd e ele irá te passar o step. 

```
cucumber
```
