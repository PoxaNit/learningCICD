#!/bin/bash

errors=()

echo 'Running tests...'

for file in $(ls ./tests/*); do

    php "${file}"

    [[ ! $? = 0 ]] && errors+=("${file}")

done

for file in ${errors[@]}; do

    echo "Error in file: ${file}"

done

if [[ ${#errors[@]} -ne 0 ]]; then

    echo "Total of wrong files: ${#errors[@]}"

    exit 1

else

    echo 'Tests Done Successfully!'

    exit 0

fi
