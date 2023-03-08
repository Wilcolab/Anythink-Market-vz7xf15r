#!/bin/bash
echo -n>result.txt
wrong="@amazon.com"
while IFS="," read -r id lastname firstname email price country
do
 if [[ ${email,,} == *"$wrong"* ]]
 then
  echo "$firstname $lastname" >> result.txt
 fi
done < <(tail -n +2 $1)