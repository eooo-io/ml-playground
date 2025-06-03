# ML Playground

A collection of Jupyter notebooks for exploring various machine learning algorithms and techniques using Python.

## Features

- Interactive JupyterLab environment via Docker
- Multi-architecture support (AMD64 and ARM64)
  - Compatible with Intel/AMD processors
  - Compatible with Apple Silicon (M1/M2/M3)
  - Compatible with AWS Graviton
- Pre-installed ML libraries:
  - seaborn
  - xgboost
  - lightgbm
  - catboost
  - imbalanced-learn
- Data exploration and profiling with pandas-profiling
- Hyperparameter optimization using scikit-optimize
- Support for reading and writing Excel and Apache Arrow data formats

## Prerequisites

- Docker
- Docker Compose
- Docker Buildx (for multi-arch builds)
- (Optional) Python 3.6+ and pip for local setup

## Quick Start

### Using Docker Compose

1. Clone the repository:
   ```bash
   git clone git@github.com:eooo-io/ml-playground.git
   cd ml-playground
   ```

2. Build and start JupyterLab (single architecture):
   ```bash
   docker-compose up --build
   ```

3. Open JupyterLab:
   - Navigate to `http://localhost:8888/lab` in your browser
   - No token is required by default (configurable via JUPYTER_TOKEN environment variable)

Your notebooks are available in the `notebooks/` directory.

### Multi-Architecture Build

To build and push multi-architecture images (AMD64 and ARM64):

1. Make the build script executable:
   ```bash
   chmod +x build-multiarch.sh
   ```

2. Build and push the images:
   ```bash
   # Default build (tags as 'latest')
   ./build-multiarch.sh

   # Custom registry and tag
   REGISTRY="your-registry/" TAG="v1.0" ./build-multiarch.sh
   ```

### Environment Variables

The following environment variables can be used to customize the setup:

- `JUPYTER_PORT`: Port to expose JupyterLab (default: 8888)
- `JUPYTER_TOKEN`: Authentication token (default: empty/disabled)
- `REGISTRY`: Docker registry prefix for multi-arch builds
- `TAG`: Image tag for multi-arch builds (default: latest)
- `PLATFORM`: Override platform for docker-compose (default: linux/amd64)

### Local Setup (Optional)

1. Create and activate a virtual environment:
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   ```
2. Install the requirements:
   ```bash
   pip install --no-cache-dir -r requirements.txt
   ```
3. Launch JupyterLab:
   ```bash
   jupyter lab
   ```

## Notebooks

Add your Jupyter notebooks (`*.ipynb`) to the `notebooks/` directory. They will be available in the Docker container or locally.

## Data Directory

Place your datasets in the `data/` directory. This directory is mounted in the container at `/home/jovyan/work/data`.
