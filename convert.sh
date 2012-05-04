
echo "converting markdown to TeX..."

files=$(find . -name "s*.md")
for f in "${files}"; do
	f2=$( echo $f | sed "s/\.md/\.tex/g" )
  echo "$f -> $f2"
	pandoc -f markdown -t latex "$f" > $f2
done

echo "done."
