cleanepub:
	[ -f ./g_fox_tagebuch.epub ] && ./g_fox_tagebuch.epub || echo "is clean"

cleanetmp:
	[ -f ./g_fox_tagebuch.tmp.md ] && rm ./g_fox_tagebuch.tmp.md || echo "is clean"

cleaneodt:
	[ -f ./g_fox_tagebuch.odt ] && rm ./g_fox_tagebuch.odt || echo "is clean"

cleanall: cleanepub cleanetmp cleanepdf

singledoc: cleanetmp
	cat ./*.md >> ./g_fox_tagebuch.tmp.md


odt:  cleaneodt singledoc
	pandoc \
        -o ./g_fox_tagebuch.odt \
        -t odt \
        -f markdown \
        ./g_fox_tagebuch.tmp.md

epub: cleanepub cleanetmp
	pandoc \
        -o ./g_fox_tagebuch.epub \
        -t epub \
        -f markdown \
        --number-sections \
        --epub-chapter-level=1 \
        ./*.md


epubnormalize: cleanepub singledoc
	echo "makrdown LOC:" $(wc -l ./g_fox_tagebuch.tmp.md)
	pandoc \
        -o ./g_fox_tagebuch.epub \
        -t epub \
        -f markdown \
        --normalize \
        ./g_fox_tagebuch.tmp.md

epubsimple: cleanepub singledoc
	pandoc \
        -o ./g_fox_tagebuch.epub \
        -t epub \
        -f markdown \
        ./g_fox_tagebuch.tmp.md


#
#        --epub-metadata \
