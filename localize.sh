# bin/bash

declare -a locale=("en" "de" "fr" "es" "ru" "zh-cn" "ko" "pl")

for i in "${locale[@]}"
do
  if [ "$i" = "$1" ]; then
    continue
  else
    echo "Translating localization files: $1 -> $i"
    python $(dirname $0)/main.py -l1 $1 -l2 $i $2
  fi
done