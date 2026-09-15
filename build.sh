#!/bin/bash

errors=()

for file in $(ls ./src/*); do

    echo "Compiling: ${file}..."

    tsc "${file}" --outDir ./dist &> /dev/null

    [[ $? -ne 0 ]] && errors+=("${file}") ||
    echo 'Done!'

done

for file in ${errors[@]}; do

    echo "Compilation Failed: ${file}"

done

if [[ ${#errors[@]} -ne 0 ]]; then

    echo "Total wrong files: ${#errors[@]}"

    exit 1

else

    echo 'Build Done Successfully!'

    exit 0

fi
