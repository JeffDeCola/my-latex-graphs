#!/bin/bash -e
# f-of-x-equals-2x.sh

echo " "
echo "************************************************************************"
echo "****************************************** f-of-x-equals-2x.sh (START) *"
echo " "

echo "Create .dvi file"
echo "latex f-of-x-equals-2x.tex"
latex f-of-x-equals-2x.tex
echo " "

echo "Convert .dvi to .svg"
echo "    -n no fonts"
echo "    -a This option forces dvisvgm to vectorize everything"
dvisvgm -n -a f-of-x-equals-2x.dvi
echo " "

echo "cp f-of-x-equals-2x.svg /mnt/c/Users/Jeff/home/jeff/cheatsheets/my-cheat-sheets/other/mathematics/pure/structures/algebra-cheat-sheet/pgfplots-pics/."
cp f-of-x-equals-2x.svg /mnt/c/Users/Jeff/home/jeff/cheatsheets/my-cheat-sheets/other/mathematics/pure/structures/algebra-cheat-sheet/pgfplots-pics/.
echo " "

echo "******************************************** f-of-x-equals-2x.sh (END) *"
echo "************************************************************************"
echo " "
