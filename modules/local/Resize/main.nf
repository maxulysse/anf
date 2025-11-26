process Resize {
    container 'robsyme/imagemagick:latest'

    input:
    tuple val(label), path("pics/*")

    output:
    tuple val(label), path("*.png")

    script:
    """
    mogrify -resize 100x100 -path . -format png pics/*
    """
}
