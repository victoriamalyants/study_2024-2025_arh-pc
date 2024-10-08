---
## Front matter
title: "Отчёт по лабораторной работе №2"
subtitle: "Система контроля версий Git"
author: "Мальянц В. К."

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы
Изучение идеологии применения средств контроля версий.
Приобретение практических навыков о работе с системой git.

# Задание
4.1 Настройка github.
4.2 Базовая настройка git.
4.3 Создание SSH-ключа.
4.4 Создание рабочего пространства и репозитория курса на основе шаблона.
4.5 Создание репозитория курса на основе шаблона.
4.6 Настройка каталога курса.
4.7 Выполнение заданий для самостоятельной работы.

# Выполнение лабораторной работы
## Настройка github
Создала учетную запись на сайте https://github.com/ и заполнила свои данные (рис.[-@fig:001]).

![Создание учетной записи на github](image/4.1.png){#fig:001 width=70%}

## Базовая настройка git
Открываю терминал и делаю предварительную конфигурацию git. Ввожу команды:
git config --global user.name "" и указываю в ней имя владельца репозитория (свое
имя), git config --global user.email "" и указываю в ней почту владельца репозитория
(свою почту) (рис. [-@fig:]) (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

![](image/.png){#fig:001 width=70%}

Настраиваю utf-8 в выводе сообщений git (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

Задаю имя начальной ветки, называю ее master (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

Параметр autocrlf (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

Параметр safecrlf (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

## Создание SSH ключа
Генерирую пару ключей для идентификации пользователя на сервере репозиториев
(рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

Вывожу содержимое файла с открытым ключом с помощью команды cat (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

Вставляю ключ в окно New SSH key, указываю имя ключа (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

Убеждаюсь в том, что SSH key создан (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

## Создание рабочего пространства и репозитория курса на основе шаблона
Создаю каталог для предмета «Архитектура компьютера» с помощью mkdir -p (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

## Создание репозитория курса на основе шаблона
Перехожу на страницу репозитория с шаблоном курса
https://github.com/yamadharma/course-directory-student-template. Задаю имя
репозитория и создаю его (рис. [-@fig:]) (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

![](image/.png){#fig:001 width=70%}

Перехожу в каталог курса с помощью команды cd (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

Клонирую созданный репозиторий (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

Ссылку для клонирования копирую на странице созданного репозитория (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

## Настройка каталога курса
Перехожу в каталог курса (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

Удаляю лишние файлы (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

Создаю необходимые каталоги (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

Отправляю файлы на сервер (рис. [-@fig:]) (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

Убеждаюсь в правильности создания иерархии рабочего пространства (рис. [-@fig:]).

![](image/.png){#fig:001 width=70%}

## Выполнение заданий для самостоятельной работы (рис. [-@fig:]) (рис. [-@fig:])

![](image/.png){#fig:001 width=70%}

![](image/.png){#fig:001 width=70%}

# Вывод
Я изучила идеологию и применение средств контроля версий и
приобрела практические навыки по работе с системой git.
