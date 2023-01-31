#! /bin/bash
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo $SCRIPTPATH
cd $SCRIPTPATH

cd ./home_configs

basePath="~/"
for file in .*	
do
	if [ "$file" != "." ] && [ "$file" != ".." ]; then			
		t_contentFile=`cat "$file"`
		# add file if not present
		touch "$basePath$file"
		# only add content if not already present
		pcregrep -M "$t_contentFile" "$basePath$file" || echo "Changing File $basePath$file" &&  echo "$t_contentFile" >> "$basePath$file"
	fi
done

cd $SCRIPTPATH

