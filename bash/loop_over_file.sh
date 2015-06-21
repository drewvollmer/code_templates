# loop_over_file.sh
# Importing a one-column text file and running a loop over its contents

var=`cat datefile.txt`
for i in $var; do

    echo $i

done
