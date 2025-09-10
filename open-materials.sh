#!/bin/bash 

# FUNCTION DEFINITIONS

# ORGANIC CHEMISTRY 1
opening_kimor1() {
    echo "Opening Organic Chemistry 1 materials..."
    open -na "Preview" "$HOME/Documents/KSN/SEMESTER 7/KIMOR1/RPMK-KI2151-Kimia-Organik-I-rev2LDJ-DW.pdf"
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
        open {"$HOME/Documents/KSN/Kimia Organik/[McMurry] Organic Chemistry 9ed/[McMurry] Organic Chemistry 9ed.pdf", ¬
            "$HOME/Documents/KSN/Kimia Organik/[Wade] Organic Chemistry 8ed/Organic Chemistry 10 Global Ed. By Leroy Wade.pdf"}
    end tell
EOF
sleep 2
}

# ORGANIC SYNTHESIS
opening_so() {
    echo "Opening Organic Synthesis materials..."
    open -na "Preview" "$HOME/Documents/KSN/Kimia Organik/[Zweifel] Modern Organic Synthesis/Zweifel Modern Organic Synthesis 2ed.pdf"
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
        open {"$HOME/Documents/KSN/Kimia Organik/[Smith] Organic Synthesis 5ed/Organic Synthesis (5th Ed.) by Michael B. Smith.pdf", ¬
            "$HOME/Documents/KSN/Kimia Organik/[Wyatt] Organic synthesis strategy and control/Wyatt Organic synthesis strategy and control 2007.pdf"}
    end tell
EOF
sleep 2
}

# FUNDAMENTALS OF ANALYTICAL CHEMISTRY
opening_ddka() {
    echo "Opening Fundamentals of Analytical Chemistry materials..."
    open -a "Preview" "$HOME/Documents/KSN/Kimia Analitik/[Harvey] Modern analytical chemistry/C7.pdf"
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
        open {"$HOME/Documents/KSN/Kimia Analitik/[Harvey] Modern analytical chemistry/Harvey D. Modern analytical chemistry (MGH, 2000)(816s).pdf", ¬
            "$HOME/Documents/KSN/Kimia Analitik/[Skoog] Fundamentals of Analytical Chemistry 9th ed/Fundamentals of Analytical Chemistry 9th ed - Skoog.pdf", ¬
            "$HOME/Documents/KSN/Kimia Analitik/[Harris] Quantitative Chemical Analysis 8ed/[Harris] Quantitative Chemical Analysis 8ed.pdf"}
    end tell
EOF
sleep 2
}

# CHEM_ENG: ENGINEERING
opening_tk_eng() {
    echo "Opening Chemical Engineering materials..."
    open -a "Preview" "$HOME/Documents/KSN/SEMESTER 6/KP/PT DONGJIN/Produksi/Textbooks/[Reklaitis] Introduction to Material and Energy Balances 1983.pdf"
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
        open {"$HOME/Documents/KSN/SEMESTER 6/KP/PT DONGJIN/Produksi/Textbooks/[Ghasem] PRINCIPLES OF CHEMICAL ENGINEERING PROCESSES 2025.pdf", ¬
            "$HOME/Documents/KSN/SEMESTER 6/KP/PT DONGJIN/Produksi/Textbooks/[Himmelblau] Basic Principles and Calculations in Chemical Engineering 9ed.pdf", ¬
            "$HOME/Documents/KSN/SEMESTER 6/KP/PT DONGJIN/Produksi/Textbooks/ELEMENTARY PRINCIPLES OF CHEMICAL PROCESSES.pdf", ¬
            "$HOME/Documents/KSN/SEMESTER 6/KP/PT DONGJIN/Produksi/Textbooks/[McCabe] Unit Operations of Chemical Engineering/[McCabe] Unit Operations of Chemical Engineering.pdf"}
    end tell
EOF
sleep 2
}

# MAIN SCRIPT EXECUTION

echo "Starting study systems for semester 7..."
echo "Choosing subjects to open materials for:"
echo "1. Organic Chemistry 1 (KIMOR1)"
echo "2. Organic Synthesis (SO)"
echo "3. Fundamentals of Analytical Chemistry (DDKA)"
echo "4. Chemical Engineering (TK-ENG)"
echo ""
read -p "Enter the number: " choice

case $choice in
    1)
        opening_kimor1
        ;;
    2)
        opening_so
        ;;
    3)
        opening_ddka
        ;;
    4)
        opening_tk_eng
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac