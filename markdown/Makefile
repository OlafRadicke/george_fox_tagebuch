clean:
	rm ./g_fox_tagebuch.epub

epub:
	pandoc \
        -o ./g_fox_tagebuch.epub \
        -t epub \
        -f markdown \
        --number-sections \
        --normalize \
        ./main.md \
        ./kap_01.md \
        ./kap_02.md \
        ./kap_03.md \
        ./kap_04.md \
        ./kap_05.md \
        ./kap_06.md

#
#        --epub-metadata \
