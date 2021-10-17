#!/bin/bash




STUDENTS=("student1" "student2" "student3")

for student in "${STUDENTS[@]}"
	do
	echo "clone $student"
	git clone  https://gitlab.com/$student/ex$1.git
	mv ex$1 "$student"_ex$1
	cd "$student"_ex"$1"/
	echo $student
	git_count_commit="git rev-list --count master"
	counter=$($git_count_commit)
	echo $counter commits 
	echo
	cd "C:\Users\username\magshimim projects"
done		
