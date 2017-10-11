#! /bin/bash
# command_line_arguments.sh

cd `dirname $0`

if [[ $# == 2 ]] ; then
    # Use arguments from command-line
    arg1=$1
    arg2=$2
fi

echo First argument is $arg1
echo Second argument is $arg2
