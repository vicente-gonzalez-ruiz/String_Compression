export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
grep citation ~/LZ77/index.aux >> index.aux
grep citation ~/LZ78/index.aux >> index.aux
grep citation ~/LZW/index.aux >> index.aux
bibtex index
make index.html

