process CombineImages {
    container 'robsyme/imagemagick:latest'
    publishDir params.outdir

    input:
    path "in.*.png"

    output:
    path "collage_all.png"

    script:
    """
    montage -geometry +10+10 -quality 05 -background "#ffbe76" -border 5 -bordercolor "#f0932b" in.*.png collage_all.png
    """
}
