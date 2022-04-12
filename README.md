# Шаблон отчета по лабораторной работе курса «Алгоритмы и структуры данных» (ФПИиКТ, ИТМО, 2022)

## Как использовать

1. Указать класс документа в начале файла

```latex
\documentclass{path/to/itmo-algo-lab-report}
```

2. Перечислить дополнительно используемые пакеты (например, `subfiles` - для разделения документа на независимые части)

```latex
\usepackage{subfiles}
...
```

3. Задать параметры для титульной страницы

```latex
\serialnumber{1}
\studentname{Фамилия И.О.}
\studentgroup{P1234}
```

4. Сгенерировать титульную страницу и содержание в теле документа

```latex
\begin{document}
    \maketitle
    \tableofcontents
    ...
\end{document}
```

5. Для описания условия и/или решения задач использовать:
    * окружения `infotable`, `examples`
    * команды `\keyword{...}` и `\cppcode[options]{path/to/file}`

```latex
    \section{Задача X}
    \begin{infotable}
        Ограничение по времени & 1 секунда \\
        Ограничение по памяти  & 64Mb        \\
    \end{infotable}

    Дано $n$ чисел. Требуется найти их сумму.

    \subsection*{Примеры}
    \begin{examples}
        \example{2 \n 2}{4}
        \example{1 \n 1/2 \n 1/4 \n 1/8 \n ...}{2}
        \example{1 \n 2 \n 4 \n 8 \n 16 \n ...}{-1}
        \example{1 \n 2 \n 3 \n 4 \n 5 \n ...}{-1/12}
    \end{examples}

    \subsection{Решение}
    Сложность по времени -- $O(n)$.
    \cppcode[fontsize=\tiny]{/../solution.cpp}
```

## Как собрать

### Linux (texlive)

1. Установить:
    * `texlive`
    * `texlive-cyrillic`, `texlive-babel-russian` для поддержки русского языка
    * `texlive-minted` для форматирования кода (использует `pygments`, установит `python`)
    * и другие дополнительно используемые зависимости (например, `texlive-subfiles`)
2. Собрать в IDE или запустить в терминале:

```shell
pdflatex -shell-escape -output-format=pdf -output-directory=./out ./report.tex
pdflatex -shell-escape -output-format=pdf -output-directory=./out ./report.tex
```

* minted требует запуска с опцией `-shell-escape`, необходимо изменить дефолтную конфигурацию IDE
* для корректного отображения содержания нужно запустить сборку 2 раза 

### Windows

1. Установить `linux`
2. см. предыдущий пункт
