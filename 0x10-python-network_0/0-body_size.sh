
#!/bin/bash

url=$1


response=$(curl -s -w '\n%{size_download}\n' "$url")


size=$(echo "$response" | tail -1)


echo "The size of the response body is $size bytes."



