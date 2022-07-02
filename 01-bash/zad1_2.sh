#!/usr/bin/bash

echo "Choose an option: "
options=("create" "remove" "copy" "move")
options_2=("file" "directory")
files="$(ls -p | grep -v /)"
directories="$(ls -d */)"
select number in "${options[@]}"
do
	option=$REPLY
	select number_2 in "${options_2[@]}"
	do
		option_2=$REPLY
		case $option_2 in
			1) case $option in
					1)
						read -p "Filename: " filename
						touch $filename ;;
					2)	
						select file in ${files}
						do
							rm $file
							break;
						done ;;
					3)
						select file in ${files}
						do
							read -p "Destination: " path
							cp $file $path
							break;
						done ;;
					4)
						select file in ${files}
						do
							read -p "Destination: " path
							mv $file $path
							break;
						done
				esac ;;
			2) case $option in
					1)
						read -p "Path: " path
						mkdir -p $path ;;
					2)	
						select dir in ${directories}
						do
							rm -r $dir
							break;
						done ;;
					3)
						select dir in ${directories}
						do
							read -p "Destination: " path
							cp -R $dir $path
							break;
						done ;;
					4)
						select dir in ${directories}
						do
							read -p "Destination: " path
							mv $dir $path
							break;
						done
				esac
		esac
		break;
	done
	break;
done
