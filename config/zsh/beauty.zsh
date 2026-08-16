#!/usr/bin/env zsh
# ┌┐ ┌─┐┌─┐┬ ┬┌┬┐┬ ┬
# ├┴┐├┤ ├─┤│ │ │ └┬┘
# └─┘└─┘┴ ┴└─┘ ┴  ┴
#--------------------------------------------
# (c) maarutan   https://github.com/maarutan

chosen_art=1  # Change this number to pick your desired art

show_ascii_art() {
    case $chosen_art in
        1)
            echo "
         ／l、
       （ﾟ､ ｡ ７
         l  ~ヽ
         じしf_,)ノ
            "
            ;;
        2)
            echo "
          ^__^
          (oo)\\_______
          (__)\       )\\/＼
              ||----w |
              ||     ||
            "
            ;;
        3)
            echo "
         /)＿/)☆
        ／(๑^᎑^๑)っ ＼
       |￣∪￣  ￣|＼／
       |＿＿_＿＿|／
            "
            ;;
        *)
            echo "Invalid choice! Please select a number "
            ;;
    esac
}

# -- FSOCIETY Multi-Style Greeting --
fsociety_greeting() {
    # Pick style from parameter ($1), global variable ($FSOCIETY_STYLE), or default to 1
    local style="${1:-${FSOCIETY_STYLE:-1}}"

    # Pick a random style if requested
    if [[ "$style" == "random" ]]; then
        style=$(( (RANDOM % 3) + 1 ))
    fi

    print -n $'\x1b[38;5;16m' # Primary accent color
    case "$style" in
        1) # Blocky Unicode
            print '    ▄████████    ▄████████  ▄██████▄   ▄████████  ▄█     ▄████████     ███     ▄██   ▄   '
            print '  ███    ███   ███    ███ ███    ███ ███    ███ ███    ███    ███ ▀█████████▄ ███   ██▄ '
            print '  ███    █▀    ███    █▀  ███    ███ ███    █▀  ███▌   ███    █▀     ▀███▀▀██ ███▄▄▄███ '
            print ' ▄███▄▄▄       ███        ███    ███ ███        ███▌  ▄███▄▄▄         ███   ▀ ▀▀▀▀▀▀███ '
            print '▀▀███▀▀▀     ▀███████████ ███    ███ ███        ███▌ ▀▀███▀▀▀         ███     ▄██   ███ '
            print '  ███                 ███ ███    ███ ███    █▄  ███    ███    █▄      ███     ███   ███ '
            print '  ███           ▄█    ███ ███    ███ ███    ███ ███    ███    ███     ███     ███   ███ '
            print '  ███         ▄████████▀   ▀██████▀  ████████▀  █▀     ██████████   ▄████▀    ▀█████▀  '
            ;;
        2) # Dollar Slant
            print ' /$$$$$$$$ /$$ /$$    /$$$$$$   /$$$$$$   /$$$$$$ '
            print '| $$_____// $$/ $$   /$$__  $$ /$$__  $$ /$$__  $$'
            print '| $$     /$$$$$$$$$$| $$  \__/| $$  \ $$| $$  \__/'
            print '| $$$$$ |  $$  $$_/|  $$$$$$ | $$  | $$| $$      '
            print '| $$__/  /$$$$$$$$$$ \____  $$| $$  | $$| $$      '
            print '| $$    |_  $$  $$_/ /$$  \ $$| $$  | $$| $$    $$'
            print '| $$      | $$| $$  |  $$$$$$/|  $$$$$$/|  $$$$$$/'
            print '|__/      |__/|__/   \______/  \______/  \______/'
            ;;
        3) # Box Line
            print '╔═╗╔═╗╔═╗╔═╗╦╔═╗╔╦╗╦ ╦'
            print '╠╣ ╚═╗║ ║║  ║║╣  ║ ╚╦╝'
            print '╚  ╚═╝╚═╝╚═╝╩╚═╝ ╩  ╩ '
            ;;
    esac
    print -n $'\x1b[0m' # Reset color

    command -v fastfetch &>/dev/null && fastfetch --key-padding-left 0
}

# Choose style: 1 (Blocky), 2 (Dollar), 3 (Box Line), or "random"
export FSOCIETY_STYLE=3

# Execute on terminal startup
fsociety_greeting
