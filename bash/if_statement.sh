# if_statement.sh

if [ condition ]; then
    echo Commands
elif [ condition ]; then
    echo Other commands
else
    echo Different commands
fi

# Logical or within an if statement:
if [ "$#" == 0 ] || [ "$#" -gt 1 ] ; then
 echo "hello"
fi
