mkdir -p slides
rm slides/*

for i in {1..120}; do
    filename="./slides/slide$(printf "%02d" $i).md"
    echo "Slide $i" > "$filename"
done

echo "Slide 10.1" > ./slides/slide010.1.md
echo "Slide 21.1" > ./slides/slide021.1.md
echo "Slide 49.1" > ./slides/slide049.1.md
echo "Slide 49.2" > ./slides/slide049.2.md
echo "Slide 61.1" > ./slides/slide061.1.md
echo "Slide 94.1" > ./slides/slide094.1.md
echo "Slide 94.2" > ./slides/slide094.2.md
