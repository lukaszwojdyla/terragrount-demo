#! /bin/bash
(
  cd ../ && terraform state pull > modules/state.json
)
dirs=$(ls -d */ | sed 's/.$//')  # all directories in root
for dir in $dirs; do
(
  cd $dir
  cat ../state.json | jq "del(.resources[] | select(.module | startswith(\"module.$dir.module\") | not ) )" |
  sed "s/module.$dir.module/module/g" > "$dir.tfstate"
  rm -rf .terraform
  #terragrunt state push $dir.tfstate
)
done
