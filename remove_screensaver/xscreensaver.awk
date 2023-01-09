{
    if ($1 == "mode:") {
        print $1 FS "off"
    }
    else print
}