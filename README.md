# Mobile Ruby Framework 

## Descrição

Framework base para testes automatizados mobile.

## Pré-requisitos

- Ruby
- bundler

## Guia de instalação

### Ruby 

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

### Appium 

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
7. Após realizar a instalação de todos as dependencias necessárias rodar o abaixo para verificar se não está faltando nada no computador.

``` 
appium-doctor --android
```

## Estrutura de pastas 

Árvore de arquivos :
```
├── Projeto
│   ├── Config
│   │   └── apk
│   └── Wiki
├── features
│   ├── step_definitions
│   ├── support
│   │   ├── caps
│   │   ├── screens
│   │   │  └── android
│   │   │  └── ios
│   │   │  └── utils
│   ├── log
│   └── README.md
```

## Envolvidos

Priscila de Araujo Caimi - paraujocaimi@gmail.com

