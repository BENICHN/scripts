{
    if (!matched) {
        if (/\[Keyboard\]/) {
            matched = 1;
        }
        else {
            print
        }
    }
    else {
        if (!NF) {
            matched = 0
        }
    }
}