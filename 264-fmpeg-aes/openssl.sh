#!/bin/bash

rm -rf ./enc
mkdir ./enc

keyFile="enc.key"
openssl rand 16 > $keyFile
encryptionKey=`cat $keyFile | xxd -p`
initializationVector=`openssl rand -hex 16`

echo $initializationVector > iv.txt

splitFilePrefix="sample"
encryptedSplitFilePrefix="enc/"

numberOfTsFiles=`ls ${splitFilePrefix}*.m4s | wc -l`

for (( i=0; i<$numberOfTsFiles; i++ ))
do
openssl aes-128-cbc -e -in ${splitFilePrefix}$i.m4s -out ${encryptedSplitFilePrefix}$i.m4s -nosalt -iv $initializationVector -K $encryptionKey

done

openssl aes-128-cbc -e -in init.mp4 -out ${encryptedSplitFilePrefix}init.enc.mp4 -nosalt -iv $initializationVector -K $encryptionKey
cp init.mp4 enc/init.mp4
