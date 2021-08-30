source venv/bin/activate;


for files in "$(find $1 -type f)"
	do
		for file in $files
			do
				bname=$(basename "$file" .jpeg);
				cat $file | python bg_remove.py > "$2/$bname.jpeg"
				echo "Done $file";
			done
	done

# cat $1 | ../venv/bin/python bg_remove.py > $2

