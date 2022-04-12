mkdir -p out \
&& pdflatex -shell-escape -output-format=pdf -output-directory=out "$1" \
&& pdflatex -shell-escape -output-format=pdf -output-directory=out "$1" \
&& mv out/"$1".pdf . \
&& rm -rf out
