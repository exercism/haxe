#!/usr/bin/env bash

set -euo pipefail

declare -i TEST_RESULT=0
FAILED_EXERCISES=''

for example_file in $(find exercises -type f -name 'Example.hx')
do
  example_dir=$(dirname ${example_file})
  exercise_dir=$(dirname ${example_dir})
  exercise=$(basename ${exercise_dir})
  echo '-------------------------'
  echo "Testing ${exercise}"
  cd $exercise_dir/.meta
  
  # TODO: This converts exercise names to PascalCase, which affects the names of the Haxe modules that get compiled. We should change this someday.
  exercise_file=$(sed -r 's/(^|-)(\w)/\U\2/g' <<< "${exercise}")
  
  cp -rf ../test ../test.hxml .
  mkdir -p src
  cp Example.hx src/${exercise_file}.hx
  sed -i -e 's/xit/it/g' test/Test.hx
  haxe test.hxml
  if [ $? -ne 0 ]; then
    TEST_RESULT=1
    FAILED_EXERCISES+="${exercise}\n"
  fi
  rm -rf test test.hxml src
  cd ../../../../
done

for exemplar_dir in exercises/concept/*;
do
  exercise=$(basename ${exemplar_dir})
  echo '-------------------------'
  echo "Testing ${exercise}"
  cd exercises/concept/$exercise/.meta
  
  # TODO: This converts exercise names to PascalCase, which affects the names of the Haxe modules that get compiled. We should change this someday.
  exercise_file=$(sed -r 's/(^|-)(\w)/\U\2/g' <<< "${exercise}")
  
  cp -rf ../test ../test.hxml .
  mkdir -p src
  cp Exemplar.hx src/${exercise_file}.hx
  sed -i -e 's/xit/it/g' test/Test.hx
  haxe test.hxml
  if [ $? -ne 0 ]; then
    TEST_RESULT=1
    FAILED_EXERCISES+="${exercise}\n"
  fi
  rm -rf test test.hxml src
  cd ../../../../
done

if [ "${TEST_RESULT}" -ne 0 ]; then
  echo "The following exercises failed"
  printf "${FAILED_EXERCISES}"
  exit "${TEST_RESULT}"
fi
