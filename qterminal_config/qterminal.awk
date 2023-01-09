BEGIN	{
    FS = "="
    n = 0
}

FILENAME == "qterminal-benichn.ini" && NF == 2 {
    settings[n,0] = $1
    settings[n++,1] = $2
}

FILENAME ~ ".*qterminal\.ini" {
    if (NF == 2) {
        for (i=0; i<n; i++) {
            if ($1 == settings[i,0]) {
                print $1 FS settings[i,1]
                next
            }
        }
        print
    }
    else {
        print
    }
}