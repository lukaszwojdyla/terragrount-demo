#! /bin/bash

set -e

path=$1

if [[ -z $path ]] ; then
  echo "Provide path to the env"
  exit 1
fi

(
  cd ../ && terraform state pull > modules/state.json
)

dirs=$(ls -d */ | sed 's/.$//')  # all directories in modules dir

echo -e "Execute for the following modules:\n$dirs"

for dir in $dirs; do
(
  cd $dir
  cat ../state.json | jq "del(.resources[] | select(.module | startswith(\"module.$dir.module\") | not ) )" |
  sed "s/module.$dir.module/module/g" > "$path/$dir/$dir.tfstate"
  #rm -rf .terraform
  ( cd $path/$dir && terragrunt state push $dir.tfstate )
)
done
