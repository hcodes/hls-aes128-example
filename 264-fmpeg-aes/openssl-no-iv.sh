#!/bin/bash

filePrefix="sample"
srcDir="src/"
encDir="enc-no-iv/"
initializationVector="00000000000000000000000000000000"

rm -rf ${encDir}
mkdir ${encDir}

keyFile="enc.no.iv.key"
openssl rand 16 > $keyFile
encryptionKey=`cat $keyFile | xxd -p`

numberOfTsFiles=`ls ${srcDir}${filePrefix}*.m4s | wc -l`

for (( i=0; i<$numberOfTsFiles; i++ ))
do
openssl aes-128-cbc -e -in ${srcDir}${filePrefix}$i.m4s -out ${encDir}${filePrefix}$i.m4s -K $encryptionKey -iv $initializationVector
done

openssl aes-128-cbc -e -in ${srcDir}init.mp4 -out ${encDir}init.enc.mp4 -K $encryptionKey -iv $initializationVector
cp ${srcDir}init.mp4 ${encDir}init.mp4
