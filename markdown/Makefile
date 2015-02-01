clean:
	rm ./g_fox_tagebuch.epub

epub: clean
	pandoc \
        -o ./g_fox_tagebuch.epub \
        -t epub \
        -f markdown \
        --epub-metadata \
        ./main.md \
        ./kap_01.md \
        ./kap_02.md \
        ./kap_03.md
