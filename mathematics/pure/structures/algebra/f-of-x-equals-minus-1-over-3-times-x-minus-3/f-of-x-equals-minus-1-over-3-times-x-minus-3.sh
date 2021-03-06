#!/bin/bash -e
# f-of-x-equals-minus-1-over-3-times-x-minus-3.sh

echo " "
echo "************************************************************************"
echo "************** f-of-x-equals-minus-1-over-3-times-x-minus-3.sh (START) *"
echo " "

echo "Create .dvi file"
echo "latex f-of-x-equals-minus-1-over-3-times-x-minus-3.tex"
latex f-of-x-equals-minus-1-over-3-times-x-minus-3.tex
echo " "

echo "Convert .dvi to .svg"
echo "    -n no fonts"
echo "    -a This option forces dvisvgm to vectorize everything"
dvisvgm -n -a f-of-x-equals-minus-1-over-3-times-x-minus-3.dvi
echo " "

echo "cp f-of-x-equals-minus-1-over-3-times-x-minus-3.svg /mnt/c/Users/Jeff/home/jeff/cheatsheets/my-cheat-sheets/other/mathematics/pure/structures/algebra-cheat-sheet/pgfplots-pics/."
cp f-of-x-equals-minus-1-over-3-times-x-minus-3.svg /mnt/c/Users/Jeff/home/jeff/cheatsheets/my-cheat-sheets/other/mathematics/pure/structures/algebra-cheat-sheet/pgfplots-pics/.
echo " "

echo "**************** f-of-x-equals-minus-1-over-3-times-x-minus-3.sh (END) *"
echo "************************************************************************"
echo " "
