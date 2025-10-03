cdf () {
    if [ "$1" = "-h" ] || [ "$1" = "--help" ] || [ "$1" = "-?" ]; then
        echo "cdf: Change directory to the frontmost Finder window (macOS)."
        echo "Usage: cdf"
        return 0
    fi

    currFolderPath=$( /usr/bin/osascript <<"    EOT"
        tell application "Finder"
            try
                set currFolder to (folder of the front window as alias)
            on error
                set currFolder to (path to desktop folder as alias)
            end try
            POSIX path of currFolder
        end tell
    EOT
    )
    cd "$currFolderPath"
}