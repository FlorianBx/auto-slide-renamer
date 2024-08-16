#!/bin/bash

log_file="rename_log.txt"
echo "Renaming Log - $(date)" > "$log_file"
echo "-------------------------------------" >> "$log_file"

current_index=1

# Get all files in order (names are important here)
files=($(ls ./slides | sort -V))

for file in "${files[@]}"; do
    basename=$(basename "$file")
    dir="./slides"
    
    # Calculate the new name with the current index
    new_name="slide$(printf "%03d" $current_index).md"
    
    # Log the operation to the log file
    echo "Renaming '$basename' to '$new_name'" >> "$log_file"
    
    mv "$dir/$basename" "$dir/$new_name"
    
    current_index=$((current_index + 1))
done

echo "Incremental renaming completed successfully. Check '$log_file' for details."
