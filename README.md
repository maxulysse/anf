# Nextflow pipeline for ANF - Workflow and Reproducibility

[Nextflow](https://www.nextflow.io/) is a powerful workflow language designed to streamline complex computational workflows, often used in fields like bioinformatics. The goal of this training workshop is not to transform you overnight into a coding expert or bioinformatics scientist. Instead, we aim to highlight the key features and capabilities offered by using Nextflow with a set of very simple, relatable examples that should be digestible by anyone!

## Acknowledgements

This workshop has been developed by the Scientific Development Team at [Seqera](https://seqera.io/). And slightly remixed from the original [Go with the (Next)flow! training](https://github.com/seqeralabs/nf-training-intro)

## Solving critter confusion

### The background

In the different sections of this tutorial, we will explore how to run an existing classification model using OpenAI's Contrastive Language–Image Pre-training ([CLIP](https://openai.com/research/clip)). It is a versatile tool that can understand and classify images based on natural language descriptions. Again don't worry, the previous sentence is a mouthful of random words to most of us - all will become clear as we progress through the tutorial!

### The challenge

We have intentionally picked a use case quite different from the usual scientific workloads, to make the transferability of the concepts more relatable as we progress through the workshop.

You have been given a set of pictures of your colleagues' animals, and you want to be able to classify them, so you can make attractive collages of them to present at your company retreat. Unfortunately, you are an alien recently arrived on Earth and you don't know the difference between cats, dogs and spiders. Fortunately for you, you can enlist the help of AI.

### The aim

To make this workshop palatable for everyone we have already:

- Dumped a bunch of animal pictures in the [`data/`](./data/) folder.
- Written a simple Python script called [`classify.py`](./bin/classify.py), which uses CLIP to classify the bloomin' critters.

Your mission should you choose to accept is going to be to:

- Use CLIP to assign critters to classes based on a list of labels you provide.
- Make a collage of the critters in each class.
- Combine the collages to create a single, glorious critter cornucopia.

![nf-training-intro metro map](docs/assets/nf-training.png)

### Mirror

This repository is mirrored on GitLab at [gitlab - ANF Workflow et Reproductibilité](https://gitlab.com/anf-workflow-et-reproductibilite)
This repository is mirrored on GitHub at [github - maxulysse](https://github.com/maxulysse/anf)

## Resources

- [Seqera website](https://seqera.io/)
- [Nextflow docs](https://www.nextflow.io/docs/latest/index.html)
- [nf-core website](https://nf-co.re/)
- [GitHub website](https://github.com/)
- [CLIP website](https://openai.com/research/clip)
- [CLIP package repository](https://github.com/openai/CLIP)
- [gitlab - ANF Workflow et Reproductibilité](https://gitlab.com/anf-workflow-et-reproductibilite)