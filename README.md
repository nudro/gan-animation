# Conceptual GAN Training Visualization

An interactive 3D visualization of Generative Adversarial Network (GAN) training dynamics, showing how a generator network learns to produce realistic panda images from random noise.

![GAN Training Visualization](main.png)

## Overview

This project provides a conceptual visualization of how GANs work, showing the adversarial training process between the Generator and Discriminator. It showcases:

1. The Generator learning to transform random noise into a realistic panda image
2. The Discriminator attempting to distinguish between real and generated images
3. The flow of gradient information between the networks during training

## Features

- **Interactive Training Process**: Adjust training steps, learning rate, and noise dimensions in real-time
- **Visual Transformation**: Watch as random noise gradually transforms into a structured panda image
- **Gradient Visualization**: Spiky wave patterns show gradient flow during backpropagation
- **Realistic Training Dynamics**: The Discriminator accuracy wavers and converges to 50% (can no longer distinguish real/fake)
- **Educational Tool**: Ideal for understanding the conceptual foundations of GANs

## Running the Visualization

### Prerequisites
- Python 3.x

### Quick Start
1. Clone this repository
```bash
git clone https://github.com/catherineordun/gan-animation.git
cd gan-animation
```

2. Run the visualization server
```bash
./run.sh
```

3. Open your browser and navigate to: http://localhost:8000/panda_gan_visualization.html

## Technical Implementation

The visualization is built using Three.js and vanilla JavaScript, with several key technical features:

### 1. Vector-to-Image Transformation Process
The transformation from noise to panda image occurs in three distinct phases:
- **Phase 1 (0-30%)**: Random noise with subtle panda structure hints and heavy distortion
- **Phase 2 (30-70%)**: Emerging panda form with decreasing noise and moderate distortion
- **Phase 3 (70-100%)**: Clear panda image with minimal noise and subtle refinements

### 2. Gradient Flow Visualization
- **Spiky Wave Patterns**: Dynamic wave lines that represent gradient updates during backpropagation
- **Progressive Spikiness**: Waves develop increasingly sharp spikes as training progresses
- **Direction-Based Effects**: Forward waves (blue) show data flow from Generator to Discriminator, while backward waves (orange) show gradient feedback

### 3. Discriminator Accuracy Simulation
- **Initial High Accuracy**: Starts around 90% (easily distinguishing fake images)
- **Wavering Pattern**: Oscillates with decreasing amplitude as training progresses
- **Mid-Training Struggle**: Shows more pronounced fluctuations during middle phases
- **Convergence to 50%**: Settles at 50% accuracy, indicating it can no longer distinguish real from fake

### 4. Realness Score Dynamics
- **Limited Maximum**: Never exceeds 0.55 during training
- **Convergence to 0.50**: By the end of training, converges to precisely 0.50
- **Natural Progression**: Follows a realistic trajectory with small oscillations

## Visualization Components

1. **Generator (Green Box with "G")**: The neural network that creates images from random noise
2. **Discriminator (Red Box with "D")**: The neural network that tries to distinguish real from fake images
3. **Gradient Arrows**: Show the flow of data and gradient information between networks
4. **Spiky Waves**: Represent the backpropagation of gradients during training
5. **Central Output**: Shows the current image produced by the Generator
6. **Target Image**: Shows the real panda image the Generator is learning to reproduce

## Educational Value

This visualization helps explain:
- How GANs learn through adversarial training
- Why the Discriminator accuracy eventually converges to 50%
- How gradient information flows between networks
- The progressive transformation from random noise to structured output

## Credits

Created by Catherine Ordun using:
- Three.js for 3D visualization
- Vanilla JavaScript for animation and interactivity

## License

MIT 