FROM --platform=$TARGETPLATFORM jupyter/scipy-notebook:2024-1

# Set ARG for platform targeting
ARG TARGETPLATFORM
ARG BUILDPLATFORM

# Print platform info during build
RUN echo "Building on $BUILDPLATFORM, targeting $TARGETPLATFORM"

# Install system dependencies
USER root
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Switch back to notebook user
USER ${NB_UID}

# Copy and install Python requirements
COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Set working directory
WORKDIR "${HOME}/work"

# Expose the notebook port
EXPOSE 8888

# Configure container startup
CMD ["start-notebook.sh", "--NotebookApp.token=''"]

