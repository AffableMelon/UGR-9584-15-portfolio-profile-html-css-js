#!/bin/bash

# Directory containing your images
SOURCE_DIR="./"  # Change this to your folder path
OUTPUT_DIR="./webp_images"  # Optional: specify a different output directory

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Loop through all files in the source directory
for file in "$SOURCE_DIR"/*; do
    # Get the filename without the extension
    filename=$(basename "$file" | sed 's/\.[^.]*$//')

    # Use cweb to convert the image to .webp format
    cwebp "$file" -o "$OUTPUT_DIR/$filename.webp"

    echo "Converted $file to $OUTPUT_DIR/$filename.webp"
done

echo "Conversion completed!"
