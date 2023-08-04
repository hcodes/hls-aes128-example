#!/bin/bash

filePrefix="sample"
srcDir="src/"
encDir="enc/"

rm -rf ${encDir}
mkdir ${encDir}

keyFile="enc.key"
openssl rand 16 > $keyFile
encryptionKey=`cat $keyFile | xxd -p`
initializationVector=`openssl rand -hex 16`

echo $initializationVector > iv.txt

filePrefix="sample"
srcDir="src/"
encDir="enc/"

numberOfTsFiles=`ls ${srcDir}${filePrefix}*.m4s | wc -l`

for (( i=0; i<$numberOfTsFiles; i++ ))
do
openssl aes-128-cbc -e -in ${srcDir}${filePrefix}$i.m4s -out ${encDir}${filePrefix}$i.m4s -nosalt -iv $initializationVector -K $encryptionKey
done

openssl aes-128-cbc -e -in ${srcDir}init.mp4 -out ${encDir}init.enc.mp4 -nosalt -iv $initializationVector -K $encryptionKey
cp ${srcDir}init.mp4 ${encDir}init.mp4
