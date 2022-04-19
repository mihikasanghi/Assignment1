#!/bin/bash
read file
filesize=$(ls -lh $file | awk '{print  $5}')
echo "$file has a size of $filesize"
wc -l $file | awk '{ print "It has " $1 " lines" }'
wc -w $file | awk '{ print "It has " $1 " words" }'


input="$file"
let x=1
while IFS= read -r line
do
  echo $line > sanghi.txt
  words=$(wc -w < sanghi.txt)
  echo "Line No: $x - Count of Words: $words"
  let x++
done < "$input"
