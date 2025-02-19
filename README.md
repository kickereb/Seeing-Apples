# Seeing Apples as Apples, Not as a Soup of Matrices

**Image Classification Through the Composition of Tailored CLIP Task Vectors on Isolated Visual Attributes**

## Overview

This repository contains the code, data, and documentation for the research project led by **Evam Kaushik** under the supervision of **Dr. Cristian Rodriguez-Opazo** and **Dr. Bernard Evans**. The project investigates whether a machine learning model can form human-interpretable visual representations purely from linguistic and observational data. By integrating the CLIP model with Low-Rank Adaptations (LoRA), the goal is to create modular, attribute-specific task vectors that can improve image classification performance, particularly in zero-shot scenarios.

## Motivation

The central research question is: 

> “Can all language-encodable knowledge be learned through non-interactive, observational means?”

This inquiry is explored by considering whether a system could learn the concept of an "apple" solely from detailed linguistic descriptions and paired visual data—without any direct intervention. The project leverages state-of-the-art models to bridge philosophical inquiry and practical machine learning methodologies.

## Methodology

The project uses the following approach:

- **CLIP Foundation:** Employ the CLIP model to learn associations between images and textual descriptions, forming the basis of the visual-linguistic representation.
- **LoRA Integration:** Inject LoRA modules into the CLIP transformer layers to enable parameter-efficient adaptation. Each LoRA model focuses on a specific visual attribute (e.g., color, shape, texture), creating attribute-specific task vectors.
- **Attribute Extraction & Clustering:** Compile a list of visual attributes, preprocess them, and project them into a semantic vector space. Cluster these attributes to isolate human-interpretable features.
- **Task Vector Composition:** Use arithmetic operations on the learned task vectors to compose complex visual concepts from simpler primitives.
- **Evaluation:** Compare the performance and interpretability of the enhanced model against the baseline CLIP model using standard and zero-shot classification metrics.

## Project Structure

```
/data          # Datasets used (e.g., Caltech-UCSD Birds, Stanford Cars, LFW, Visual Genome)
/models        # Implementations of CLIP with integrated LoRA modules
/experiments   # Scripts and notebooks for training, evaluation, and analysis
/docs          # Documentation, including the thesis proposal and supplementary materials
/README.md     # This file
```

## Getting Started

### Prerequisites

- Python 3.8+
- [PyTorch](https://pytorch.org/)
- Additional dependencies (listed in `requirements.txt`)

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/seeing-apples.git
   cd seeing-apples
   ```

2. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Prepare the datasets:**
   Download and organize the datasets as described in the `/data` directory documentation.

### Running the Experiments

Follow the steps in the `/experiments` directory to:
1. **Train individual LoRA models on specific visual attributes.**
2. **Generate task vectors from each attribute-specific model.**
3. **Combine task vectors using anisotropic scaling to form composite classifiers.**
4. **Evaluate performance against baseline CLIP.**

## Evaluation Metrics

The research evaluates the approach based on:
- **Interpretability:** Qualitative analysis of task vector activations.
- **Classification Accuracy:** Performance on both standard and zero-shot classification tasks.

## References

The following key works underpin the methodology of this project:
- [CLIP: Learning Transferable Visual Models From Natural Language Supervision](https://arxiv.org/abs/2103.00020) – Radford et al.
- [LoRA: Low-Rank Adaptation of Large Language Models](https://arxiv.org/abs/2106.09685) – Hu et al.
- Additional references are detailed in the attached proposal document.

## Contributing

Contributions to enhance the models, extend experiments, or improve documentation are welcome. Please refer to the [CONTRIBUTING.md](CONTRIBUTING.md) file for guidelines.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any queries or further discussion, please contact **Evam Kaushik** at [evamkaushik@gmail.com](mailto:evamkaushik@gmail.com).
