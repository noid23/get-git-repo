#/bin/bash
if [ -n "$1" ]; then
	for param in "$@" ; do
		githubuser=$param;
        	printf "Pulling repos for $githubuser\n";
        	/usr/bin/curl -s https://api.github.com/users/$githubuser/repos?per_page=500 | /usr/bin/jq -r '.[] | .html_url' > ~/$githubuser-repos.txt;
        	repos=$(cat $githubuser-repos.txt | wc -l);
        	printf "Collected $repos repos from user $githubuser and put them in ~/$githubuser-repos.txt\n"
	done
else
	echo "Usage: ./get-git-repo.sh GITHUBUSER1 GITHUBUSER2.."
	exit 1
fi
