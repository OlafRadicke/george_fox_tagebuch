% Konvertieren:


for filename in `ls`
do
    % Konvertiert jpg zu tif
    convert $filename ./p_s001.tif
    % Texterkennung:
    tesseract ./p_s135.tif ./out_135.txt  -l deu-f

done