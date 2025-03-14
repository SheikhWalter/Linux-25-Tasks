#!/bin/bash

while true;
do
    echo "========== Linux System Manager =========="
    echo "1. Show System Information"
    echo "2. Check File Permissions"
    echo "3. Change File Permissions"
    echo "4. Compress a File/Directory"
    echo "5. Decompress a File"
    echo "6. Exit"
    echo "=========================================="
    echo "Enter your choice: "
    read choice

    if [[ $choice -eq 6 ]]
        then 
            echo "Exiting the system manager. Goodbye!"
            sleep 2
            break
    fi

    case $choice in
        1) 
            echo "Current user: $USER"
            sleep 2;;
        2) 
            echo -n "Enter file name: "
            read fname
            echo "Permissions for $fname: $(ls -l $fname | cut -d " " -f 1)"
            sleep 2;;
        3)
            echo -n "Enter file name: "
            read fname
            echo -n "Enter new permissions: "
            read permissions
            chmod $permissions $fname
            echo "Permissions changed successfully."
            sleep 2;;
        4) 
            echo -n "Enter file/directory name: "
            read name
            echo "Choose compression type:"  
            echo "1. tar.gz"  
            echo "2. zip"
            read c
            case $c in
                1) 
                    tar -czf $name.tar.gz $name
                    echo "Compression successful: $name.tar.gz created.";;
                2) 
                    zip -r $name.zip $name
                    echo "Compression successful: $name.zip created.";;
                *)
                    echo "Invalid input, please try again.";;
            esac
            sleep 2;;
        5) 
            echo "Enter the compressed file name: "
            read name
            echo "Extracting... "
            tar -xzf $name
            sleep 1
            echo "Decompression successful."
            sleep 2;; 
        *)
            echo "Invalid input, please try again.";;
    esac
done