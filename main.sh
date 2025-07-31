#!/bin/zsh

site_path="https://www.toptal.com/developers/gitignore/api/"
coma=","
if [ $# -eq 0 ]; then
  echo need variable
	exit 1
fi
for i; do
	site_path="$site_path$i$coma"
done
site_path=${site_path%,}

if [[ -f "/.gitignore" ]]; then
	curl "$site_path" >> "./.gitignore";
else
	curl "$site_path" > "./.gitignore";
fi
