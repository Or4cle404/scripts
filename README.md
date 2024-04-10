# Media Downloader Script

## Overview

This script helps users to identify and download images, videos, and audio files from a webpage or website provided by the user.

## How It Works

1. **Input**: The user provides the webpage/website link.

2. **Validation**: The script checks whether the provided link is valid or not.

3. **Storing the URL**: The link of the webpage is stored in a `.txt` file called `webpage_link.txt`.

4. **Downloading Webpage**: Using the `curl` command, the webpage is downloaded from the `.txt` file.

5. **Downloading Image Files**: The script uses `grep` command to find image file extensions present on the webpage and displays the number of image files found.

6. **Downloading Audio Files**: Similarly, the script uses `grep` command to find audio file extensions present on the webpage and displays the number of audio files found.

7. **Downloading Video Files**: The script uses `grep` command to find video file extensions present on the webpage and displays the number of video files found.

8. **User Interaction**: Users are provided with options to download which type of media they want to download, along with the number of those files identified on the page.

9. **Downloading Media**: The selected media files are downloaded using `curl` command.

## Usage

1. Run the script in your terminal.
   
2. Enter the webpage URL when prompted.

3. Select the type of media you want to download when prompted.

4. Wait for the download to complete.

## Note

- Ensure you have `curl` installed on your system to run this script successfully.

- This script is for personal and educational use only. Respect copyright laws and terms of service of the websites you are downloading media from.

- Use responsibly and do not abuse this script for illegal activities.
