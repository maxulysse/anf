process Collage {
    container 'robsyme/imagemagick:latest'

    input:
    tuple val(label), path("pics/*")

    output:
    path "collage.png"

    script:
    """
    montage pics/* -background black +polaroid -background '#ffbe76' collage_nolabel.png
    montage -label '${label}' -geometry +0+0 -background "#f0932b" collage_nolabel.png collage.png
    """
}
