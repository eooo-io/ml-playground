# ML Playground

A collection of Jupyter notebooks for exploring various machine learning algorithms and techniques using Python.

## Features

- Interactive JupyterLab environment via Docker
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
- (Optional) Python 3.6+ and pip for local setup

## Quick Start

### Using Docker Compose

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd ml-playground
   ```
2. Build the Docker image and start JupyterLab:
   ```bash
   docker-compose up --build
   ```
3. Open JupyterLab:
   - Navigate to `http://localhost:8888/lab` in your browser.
   - Enter the access token printed in the container logs.

Your notebooks are available in the `notebooks/` directory.

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