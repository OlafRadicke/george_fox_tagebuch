

all: epub


cleanepub:
	[ -f ./g_fox_tagebuch.epub ] && ./g_fox_tagebuch.epub || echo "is clean"

cleanetmp:
	[ -f ./g_fox_tagebuch.tmp.md ] && rm ./g_fox_tagebuch.tmp.md || echo "is clean"

cleaneodt:
	[ -f ./g_fox_tagebuch.odt ] && rm ./g_fox_tagebuch.odt || echo "is clean"

cleanehtml:
	[ -f ./g_fox_tagebuch.html ] && rm ./g_fox_tagebuch.html || echo "is clean"


cleanall: cleanepub cleanetmp cleanepdf

singledoc: cleanetmp
	cat ./*.md >> ./g_fox_tagebuch.tmp.md


odt:  cleaneodt singledoc
	pandoc \
        -o ./g_fox_tagebuch.odt \
        -t odt \
        -f markdown \
        --normalize \
        --number-sections \
        ./g_fox_tagebuch.tmp.md

epub: cleanepub
	pandoc \
        -o ./g_fox_tagebuch.epub \
        -t epub \
        -f markdown \
        --normalize \
        --number-sections \
        --epub-chapter-level=1 \
        ./*.md


epubsimple: cleanepub singledoc
	pandoc \
        -o ./g_fox_tagebuch.epub \
        -t epub \
        -f markdown \
        ./g_fox_tagebuch.tmp.md

html: cleanehtml
	pandoc \
        -o ./g_fox_tagebuch.html \
        -t html \
        -f markdown \
        --toc \
        --ascii \
        --normalize \
        --number-sections \
        ./*.md


#
#        --epub-metadata \
