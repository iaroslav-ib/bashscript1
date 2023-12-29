for file in `find ~ -type f -name "*"`
do
cnt=0
	while IFS= read -r line
	do
		if [ ! "$line" ]
		then
			((cnt++))
			if [ $cnt -gt 5 ]
			then
				echo $file
				((cnt=0))
				break
			fi
		fi
	done < ${file}
done
