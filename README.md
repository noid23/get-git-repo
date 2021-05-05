get-git-repo.sh & get-multiple-git-repos.sh
=============
Two dumb BASH scripts to generate a list of all the repos for one or more users

Usage: ./get-git-repo.sh GITHUBUSER

Usage: ./get-multiple-git-repos.sh GITHUBUSER1 GITHUBUSER2 ...

Example

$ ./get-git-repo.sh noid23

$ ./get-multiple-git-repos.sh noid23 nccgroup ...

TODO:
- [ ] Add multi output support - TSV, CSV, JSON, Text
