function congrats {
 echo "Congratulations!"
}
response=0
files=$(ls -1q | wc -l)
while [[ $response  -ne $files ]]
do
	echo "How many files are in the current directory?"
	echo "Try to guess typing a number and then press Enter"
	read response
	if [[ $response -gt $files ]]
	then 
		echo "Too high, try again!"
	elif [[ $response -lt $files ]]
	then 
		echo "Too low, try again!"
	fi
done

congrats
