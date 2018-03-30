#!/bin/bash
#CSG6206 – Advanced Scripting
#Workshop 1 – Version Control & Bash
#Jeewan Parajuli(10436478)

echo "Bash Script is created to check the  status of your git repository."

#check if standard input is git repository file path 
gitRepoFilePath=$1
if [ -d "$gitRepoFilePath" ] || [ -d "$gitRepoFilePath/.git" ]
then
	echo "Provided repository file path is ${gitRepoFilePath}"
else
	echo "Its not a git repository"
	repository="`pwd`"
	repository=$(git rev-parse --git-dir 2> /dev/null)
	echo "Git repository file path: ${gitRepoFilePath}"
fi
echo "Total number of commit(s): $(git rev-list --count HEAD)"
git log -1 --pretty=format:"Most recent commit details 
AUTHOR INFORMATION
	Author Name: %aN
	Email: %ae
Comments: %s"


