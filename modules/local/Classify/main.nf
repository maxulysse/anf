process Classify {
    memory '4G'

    container "${workflow.containerEngine == 'singularity' || workflow.containerEngine == 'apptainer'
        ? 'https://gitlab.com/anf-workflow-et-reproductibilite/conteneurs/-/raw/main/apptainer-images/classify.sif'
        : 'robsyme/clip-cpu:1.0.0'}"

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
