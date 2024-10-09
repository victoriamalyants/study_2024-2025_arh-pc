---
## Front matter
title: "Отчёт по лабораторной работе №3"
subtitle: "Язык разметки Markdown"
author: "Мальянц Виктория Кареновна"

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

Освоение процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Задание

3.1 Заполнение отчета по выполнению лабораторной работы № 3 с помощью языка разметки Markdown
3.2 Задание для самостоятельной работы.

# Выполнение лабораторной работы
## Заполнение отчета по выполнению лабораторной работы № 3
Открываю терминал. Перехожу в каталог курса, сформированный при выполнении лабораторной работы № 2 (рис. [-@fig:001]).

![Перемещение между директориями](image/1.png){#fig:001 width=70%}

Обновляю локальный репозиторий, скачав изменения из удаленного репозитория с помощью команды git pull (рис. [-@fig:002]).

![Обновление локального репозитория](image/2.png){#fig:002 width=70%}

Перехожу в каталог с шаблоном отчета по лабораторной работе № 3 (рис. [-@fig:003]).

![Перемещение между директориями](image/3.png){#fig:003 width=70%}

Провожу компиляцию шаблона с использованием Makefile. Для этого ввожу команду make (рис. [-@fig:004]).

![Компиляция шаблона](image/4.png){#fig:004 width=70%}

Открываю сгенерированный файл report.doch в LibreOffice (рис. [-@fig:005]).

![Открытие файла doch](image/5.png){#fig:005 width=70%}

Открываю сгенерированный файл report.pdf (рис. [-@fig:006]). Убеждаюсь в корректности полученных файлов.

![Открытие файла pdf](image/6.png){#fig:006 width=70%}

Удаляю полученные файлы с использованием команды Makefile. Для этого ввожу команду make clean (рис. [-@fig:007]).

![Удаление файлов](image/7.png){#fig:007 width=70%}

Убеждаюсь в том, что файлы report.doch и report.pdf были удалены (рис. [-@fig:008]).

![Открытие приложения Файлы](image/8.png){#fig:008 width=70%}

Открываю файл report.md с помощью текстового редактора gedit (рис. [-@fig:009]).

![Открытие файла report.md](image/9.png){#fig:009 width=70%}

Заполняю отчет (рис. [-@fig:010]).

![Заполнение отчета](image/18.png){#fig:010 width=70%}

Компилирую файл с отчетом. Загружаю отчет на Github.

## Задание для самостоятельной работы
Заполняю отчет по лабораторной работе № 2 (рис. [-@fig:011])

![Заполнение отчета](image/10.png){#fig:011 width=70%}

Провожу компиляцию файла с использованием Makefile. Для этого ввожу ко-
манду make (рис. [-@fig:012]).

![Компиляция файлов](image/11.png){#fig:012 width=70%}

Открываю сгенерированный файл report.doch в LibreOffice (рис. [-@fig:013]) 

![Открытие файла pdf](image/12.png){#fig:013 width=70%}

Открываю сгенерированный файл report.pdf (рис. [-@fig:014]). Убеждаюсь в корректности полученных файлов.

![Открытие файла doch](image/13.png){#fig:014 width=70%}

Перехожу в каталог arch-pc (рис. [-@fig:015]).

![Перемещение между директориями](image/14.png){#fig:015 width=70%}

Добавляю изменения на Github с помощью команды git add . (рис. [-@fig:016]).

![Добавление файлов](image/15.png){#fig:016 width=70%}

Сохраняю изменения на Github с помощью команды git commit -am (рис. [-@fig:017]).

![Сохранение изменений](image/16.png){#fig:017 width=70%}

Отправляю все произведенные изменения локального дерева в центральный репозиторий (рис. [-@fig:018]).

![Отправка файлов](image/17.png){#fig:018 width=70%}

# Выводы

Я освоила процедуры оформления отчетов с помощью легковесного языка разметки Markdown.
