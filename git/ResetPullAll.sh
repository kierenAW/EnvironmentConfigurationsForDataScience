#!/bin/sh
for file in */ ; do 
	if [[ -d "$file" && ! -L "$file" ]]; then
		echo "";
		echo "-----------------------";
		echo "";
		echo "processing $file";
		(cd "${file}" && git checkout -- * && git pull)
		echo "";
	fi;
done