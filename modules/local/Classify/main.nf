process Classify {
    memory '4G'
    container 'robsyme/clip-cpu:1.0.0'

    input:
    path pic
    val prompts

    output:
    tuple stdout, path(pic)

    script:
    """
    classify.py --image ${pic} --labels '${prompts}'
    """
}
