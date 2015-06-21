# check_if_file_exists.sh

if [[ -e file.txt ]]; then
	echo "Found"
else
	echo "Not found"
fi

# But the -s option is better since it tests for existence and emptiness:

if [[ -s file.txt ]]; then
	echo "Found and is not empty"
else
	echo "Not found or is empty"
fi
