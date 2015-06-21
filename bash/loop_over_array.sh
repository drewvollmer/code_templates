#! /bin/bash
# loop_over_array.sh

cd `dirname $0`

tex_array=($(ls *_table.tex))

# Loop over it
for i in "${tex_array[@]}"
do

    # Remove row numbers (required to export the table with row groupings)
    perl -i -pe 's/^~~[0-9]+&/&/ig' $i

    # Create PDF
    pdflatex $i

done
