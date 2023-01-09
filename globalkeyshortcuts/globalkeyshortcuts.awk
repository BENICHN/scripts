BEGIN	{
    FS = "."
}

{
    if ($1 == "[Super_L") {
        print "[Alt%2BF1" FS $2
    }
    else print
}