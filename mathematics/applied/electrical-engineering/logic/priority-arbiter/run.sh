#!/bin/bash -e
# run.sh

echo " "
echo "************************************************************************"
echo "******************************************************* run.sh (START) *"
echo " "

echo "Create .dvi file"
echo "latex priority-arbiter.tex"
latex priority-arbiter.tex
echo " "

echo "Convert .dvi to .svg"
echo "    -n no fonts"
echo "    -a This option forces dvisvgm to vectorize everything"
dvisvgm -n -a -o priority-arbiter priority-arbiter.dvi
echo " "

echo "cp priority-arbiter.svg /mnt/c/Users/Jeff/home/jeff/systemverilog/my-systemverilog-examples/sequential-logic/arbiters/priority-arbiter/svgs/."
cp priority-arbiter.svg /mnt/c/Users/Jeff/home/jeff/systemverilog/my-systemverilog-examples/sequential-logic/arbiters/priority-arbiter/svgs/.
echo " "

echo "********************************************************* run.sh (END) *"
echo "************************************************************************"
echo " "
