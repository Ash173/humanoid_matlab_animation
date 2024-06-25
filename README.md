# Humanoid Stick Figure Animation in MATLAB
This project creates a humanoid stick figure in MATLAB with movable joints. The stick figure has two hands and two legs attached to a single rigid torso. The model includes detailed joint articulation, making it a versatile tool for animation and analysis.

## Data and Dimensions

- **Thigh Length:** 0.6 units
- **Leg (Knee to Ankle) Length:** 0.6 units
- **Arm Length (Shoulder Joint to Elbow):** 0.4 units
- **Arm Length (Elbow to Wrist):** 0.4 units
- **Shoulder Joint to Joint Length:** 0.8 units
- **Hip Joint to Joint Length:** 0.6 units
- **Neck to Hip Vertical Height:** 0.6 units

## Humanoid Model Specifications

- **Joints and Degrees of Freedom:**
  - **Shoulder Joints:** 3 degrees-of-freedom each
  - **Hip Joints:** 3 degrees-of-freedom each
  - **Elbow Joints:** 1 degree-of-freedom each
  - **Knee Joints:** 1 degree-of-freedom each
  - **Central Torso:** 6 degrees-of-freedom (3 positional and 3 orientational)

- **Total Degrees of Freedom:** 22

## Animation Details

Each of the 19 angles in the humanoid model is varied from 0 to 45 degrees and back to 0.

## Getting Started

### Prerequisites

- MATLAB (R2019b or later)

### Installation

Clone the repository to your local machine:
```sh
git clone https://github.com/Ash173/humanoid_matlab_animation.git
cd humanoid_matlab_animation
```

### Running the Animation
Open MATLAB and navigate to the project directory. Run the main script:
```sh
humanoid.m
```
This script initializes the humanoid stick figure and performs the animation, varying each joint angle from 0 to 45 degrees and back to 0.

### Usage
You can modify the joint angles and the animation sequence by editing the humanoid.m file. The script includes comments and documentation to guide you through the customization process.

### Animation video

https://github.com/Ash173/humanoid_matlab_animation/assets/110592725/9e953afe-d3c4-4c29-87d2-4b87af4e0908





