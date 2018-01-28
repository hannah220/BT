#! /bin/zsh
#
# write the path to your shell
#
# bash: /bin/bash
# csh : /bin/csh

#
# LaTeX PDF auto-generator (include BibTeX)
# $ ./gen.sh filename(without ".tex")
# ex. $./gen.sh ICS_RINKO_20140721_resume
#

ebb -x ./*.pdf 
platex $1
pbibtex $1
platex $1
platex $1
dvipdfmx $1.dvi
rm -rf $1.aux
rm -rf $1.dvi
rm -rf $1.blg
rm -rf $1.bbl
rm -rf $1.log
rm -rf $1.toc
open $1.pdf
