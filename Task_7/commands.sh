grep -o "\(https\?://\|www\.\)[[:alnum:]_-]\+\(\.[[:alnum:]_-]\+\)\+\(/[[:alnum:]_-]\+\)\?" data.txt    # Extract URLs
grep -o "+\?[[:digit:]]\{12,13\}" data.txt                                                              # Extract phone numbers
grep -o "[[:digit:]]\+\(\.[[:digit:]]\+\)\+" data.txt                                                   # Extract IP addresses