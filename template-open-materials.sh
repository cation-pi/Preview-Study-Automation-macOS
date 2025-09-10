#!/bin/bash 

# FUNCTION DEFINITIONS (TEMPLATE)

# Subject 1
opening_subject1() {
    echo "Opening Subject 1 materials..."
    open -na "Preview" "$HOME/file path/xx.pdf"
    osascript -e '
    tell application "Preview" to activate
    delay 0.5
    tell application "System Events"
        keystroke "f" using {control down, command down}
    end tell
    '
    sleep 1

    osascript <<EOF
    tell application "Preview"
        activate
        open {"$HOME/file path/xx.pdf", ¬
            "$HOME/file path/xx.pdf"}
    end tell
EOF
sleep 2
}

# Subject 2
opening_subject2() {
    echo "Opening Subject 2 materials..."
    open -na "Preview" "$HOME/file path/xx.pdf"
    osascript -e '
    tell application "Preview" to activate
    delay 0.5
    tell application "System Events"
        keystroke "f" using {control down, command down}
    end tell
    '
    sleep 1

    osascript <<EOF
    tell application "Preview"
        activate
        open {"$HOME/file path/xx.pdf", ¬
            "$HOME/file path/xx.pdf"}
    end tell
EOF
sleep 2
}

# Subject 3
opening_subject3() {
    echo "Opening Subject 3 materials..."
    open -a "Preview" "$HOME/file path/xx.pdf"
    osascript -e '
    tell application "Preview" to activate
    delay 0.5
    tell application "System Events"
        keystroke "f" using {control down, command down}
    end tell
    '
    sleep 1

    osascript <<EOF
    tell application "Preview"
        activate
        open {"$HOME/file path/xx.pdf", ¬
            "$HOME/file path/xx.pdf", ¬
            "$HOME/file path/xx.pdf"}
    end tell
EOF
sleep 2
}

# MAIN SCRIPT EXECUTION (TEMPLATE)

echo "Starting study systems..."
echo "Choosing subjects to open materials for:"
echo "1. Subject 1"
echo "2. Subject 2"
echo "3. Subject 3"
echo ""
read -p "Enter the number: " choice

case $choice in
    1)
        opening_subject1
        ;;
    2)
        opening_subject2
        ;;
    3)
        opening_subject3
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac