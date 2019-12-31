export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
rm -f citations
grep citation ~/LZ77/index.aux >> citations
grep citation ~/LZ78/index.aux >> citations
grep citation ~/LZW/index.aux >> citations
cat citations >> index.aux
bibtex index
make index.html

