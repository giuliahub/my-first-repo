echo "How many files are in the current directory?"
echo "Try to guess typing a number and then press Enter"
read response
function congrats {
 echo "Congratulations!"
}
for i in "$response"
do
	if [[ "$response" -eq 3 ]]; then
	congrats
	elif [[ "$response" -ne 3 ]]; then
	echo "Too low or too high. Try again"
	read response
		if [[ "$response" -eq 3 ]]; 
		then congrats
		else 
			echo "Too low or too high. Run bash script again"
		fi
	fi
done

