#!/bin/bash

fil=`cat $1`;

while IFS='=' read -r key value
  do
	fil=`echo "$fil" | sed -e "s/\[\[$key\]\]/$value/g"`
  done < $2

echo $fil > "../output/index.html"

echo "Execution completed successfully please check ../output/index.html file to view converted file";
