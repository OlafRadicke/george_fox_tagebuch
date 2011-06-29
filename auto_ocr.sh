#!/bin/bash
# Habautomatisches Konvertieren

date > auto_ocr.log
for filename in `find ./ -name '*.jpg'`
do
    printf "verarbeite %s \n" $filename
    # Konvertiert jpg zu tif
    convert $filename ${filename}.tif
    # Texterkennung:
    outfilename=${filename}.out.txt
    tesseract $filename.tif $outfilename  -l deu-f
    printf "... %s erstellt. \n" $outfilename
    echo 'räume tif auf....'
    rm ${filename}.tif
done
date >> auto_ocr.log