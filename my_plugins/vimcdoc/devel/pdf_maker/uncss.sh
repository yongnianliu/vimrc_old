#!/bin/bash
for i in *.html; do
  cat $i |
  perl -np -e 's/<code class="note">((?:.(?!<\/?code))*.)<\/code>/<dfn>\1<\/dfn>/g' |
  perl -np -e 's/<code class="keystroke">((?:.(?!<\/?code))*.)<\/code>/<kbd>\1<\/kbd>/g' |
  perl -np -e 's/<code class="option">((?:.(?!<\/?code))*.)<\/code>/<blink>\1<\/blink>/g' |
  perl -np -e 's/<code class="special">((?:.(?!<\/?code))*.)<\/code>/<samp>\1<\/samp>/g' |
  perl -np -e 's/<code class="vim">((?:.(?!<\/?code))*.)<\/code>/<tt>\1<\/tt>/g' |
  perl -np -e 's/<code class="example">((?:(?:.(?!<\/?code))*.)?)<\/code>/<var>\1<\/var>/g' |
  perl -np -e 's/<code class="section">((?:(?:.(?!<\/?code))*.)?)<\/code>/<strong>\1<\/strong>/g' |
  perl -np -e 's/<code class="notvi">((?:.(?!<\/?code))*.)<\/code>/<cite>\1<\/cite>/g' |
  grep -v 'Generated by vim2html' > tmp &&
  mv tmp $(basename $i)
done
