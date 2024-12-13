#!/bin/bash

JSON_FILE="odin_index.json"

wget -O "$JSON_FILE" https://odinbinaries.thisdrunkdane.io/file/odin-binaries/nightly.json



# Extract the latest date from the JSON
LATEST_DATE=$(jq -r 'keys | map(select(. != "last_updated")) | max' <<< $(jq '.files' "$JSON_FILE"))

# Check if the latest version is already installed
if [ -f odin_version.txt ]; then
    # Compare the versions
    if [ $LATEST_DATE == $(cat odin_version.txt) ]; then
        echo "Odin is already up to date."
        # Remove the nightly.json file
        rm nightly.json
        exit 0
    fi
fi

# Extract the URL for the Linux x86-64 binary for the latest date
LATEST_URL=$(jq -r ".files[\"$LATEST_DATE\"][] | select(.name | test(\"linux-amd64\")) | .url" "$JSON_FILE")

# Check if the URL was found
if [ -n "$LATEST_URL" ]; then
    echo "Latest Linux x86-64 binary URL: $LATEST_URL"
    
    # Download the latest version
    wget -O odin.tar.gz "$LATEST_URL"

    # Extract the Odin compiler
    tar -xzf odin.tar.gz

    # Rename the extracted folder to odin (if necessary)
    EXTRACTED_DIR=$(tar -tf odin.tar.gz | head -1 | cut -f1 -d"/")
    if [ "$EXTRACTED_DIR" != "odin" ]; then
        mv "$EXTRACTED_DIR" odin
    fi
    
    # Move the entire Odin directory to /usr/local/lib
    sudo mv odin /usr/local/lib/
    
    # Create a symbolic link in /usr/local/bin
    sudo ln -sf /usr/local/lib/odin/odin /usr/local/bin/odin

    # Remove the Odin compiler download file
    rm odin.tar.gz

    # Write the Odin latest date to odin_version.txt
    echo "$LATEST_DATE" > odin_version.txt

    # Remove the JSON file
    rm "$JSON_FILE"

    echo "Odin compiler installed successfully."
else
    echo "No Linux x86-64 binary found for the latest date."
fi