#/bin/bash
if [ $# -eq 0 ]; then
	echo "Usage: ./get-git-repo.sh GITHUBUSER"
	exit 1
elif [ $# -gt 0 ]; then
	githubuser=$1;
	printf "Pulling repos for $githubuser\n";
	/usr/bin/curl -s https://api.github.com/users/$githubuser/repos?per_page=500 | /usr/bin/jq -r '.[] | .html_url' > ~/$githubuser-repos.txt;
	printf "Collected $(~/githubuser-repos.txt | wc -l) repos from user $githubuser and put them in ~/$githubuser-repos.txt\n"
fi
