#!/bin/bash
#!/bin/bash

#Create working directory
mkdir tmp

#copy existing md files into working directory in correct order
cp ./src/head.md ./tmp/00-head.md

#TODO: break data file into category segments & sort by project name

#convert data into markdown & save into working directory
./CSV-to-md.sh src/data.csv tmp/01-data.md

#compile document
cat ./tmp/* > README.md

#cleanup after ourselves
rm -rf ./tmp
