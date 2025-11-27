#!/usr/bin/env nextflow

include { Classify      } from './modules/local/Classify'
include { Collage       } from './modules/local/Collage'
include { CombineImages } from './modules/local/CombineImages'
include { Resize        } from './modules/local/Resize'

workflow {
    pics = channel.fromPath(params.input).randomSample(200)

    Classify(pics, params.prompts)

    // Here we want to keep only some specific kind of animals
    ch_animal = Classify.out.branch { type, _pics ->
        keep: params.keep ? params.keep.contains(type.trim()) : true
        other: true
    }

    Resize(ch_animal.keep)
    Collage(Resize.out.groupTuple())
    CombineImages(Collage.out.collect())
}
