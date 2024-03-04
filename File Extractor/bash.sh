echo "File Extractor"

echo "Enter the webpage link: "
read webpage_link

# Check if the entered link is valid
if [[ ! "$webpage_link" =~ ^https?:// ]]; then
  echo "Invalid webpage link. Please enter a valid URL starting with http:// or https://"
  exit 1
fi

# Store the webpage link in a file
echo "$webpage_link" > webpage_link.txt

# Download the webpage 
curl -s "$webpage_link" > webpage.html

# Command to extract image files from the link
grep -o -E 'https?://[^"]+\.(jpg|jpeg|png|apng|avif|svg|webp)' webpage.html > image.txt
line_count=$(wc -l < image.txt)
echo "There are $line_count image files present in the link provided"

# Command to extract audio files from the link
grep -o -E 'https?://[^"]+\.(mp3|ogg|wav)' webpage.html > audio.txt
line_count1=$(wc -l < audio.txt)
echo "There are $line_count1 audio files present in the link provided"

# Command to extract video files from the link
grep -o -E 'https?://[^"]+\.(mp4|webm|gif|mkv)' webpage.html > video.txt
line_count2=$(wc -l < video.txt)
echo "There are $line_count2 video files present in the link provided"

echo "1. For image files"
echo "2. For audio files"
echo "3. For video files"
echo "4. Exit"
read -p "Select your option: " option

case $option in
1) echo "For downloading image files"
   wget -i image.txt
   ;;

2) echo "For downloading audio files"
   wget -i audio.txt
   ;;

3) echo "For downloading video files"
   wget -i video.txt
   ;;

4) echo "Exiting"
   exit
   ;;

*) echo "Invalid choice..."
   ;;
esac
