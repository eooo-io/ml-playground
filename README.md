# ML Playground - Content Processing for RAG Systems

[![Python](https://img.shields.io/badge/Python-3.8+-3776AB?style=flat&logo=python&logoColor=white)](https://www.python.org/downloads/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Lab-F37626?style=flat&logo=jupyter&logoColor=white)](https://jupyter.org)
[![Docker](https://img.shields.io/badge/Docker-Enabled-2496ED?style=flat&logo=docker&logoColor=white)](https://www.docker.com/)
[![Docker Compose](https://img.shields.io/badge/Docker_Compose-Configured-2496ED?style=flat&logo=docker&logoColor=white)](https://docs.docker.com/compose/)
[![Platform](https://img.shields.io/badge/Platform-AMD64_|_ARM64-00979D?style=flat&logo=arduino&logoColor=white)](https://www.docker.com/products/docker-desktop/)
[![License](https://img.shields.io/badge/License-MIT-22C55E?style=flat&logo=opensourceinitiative&logoColor=white)](https://opensource.org/licenses/MIT)

This repository provides a comprehensive set of tools for processing various content types for RAG (Retrieval-Augmented Generation) systems. It includes specialized processors for different content formats, quality assessment, and vector storage integration.

## Content Types & Use Cases

### 1. Books & E-books
- **Formats**: EPUB, PDF, MOBI
- **Processing**:
  - Chapter-based text extraction
  - Smart text chunking with context preservation
  - Metadata extraction (title, author, language)
  - Table of contents preservation
  - Citation handling

### 2. Magazines & Articles
- **Formats**: PDF, HTML, DOCX
- **Processing**:
  - Layout-aware text extraction
  - Image caption processing
  - Article segmentation
  - Byline and date extraction
  - Advertisement filtering

### 3. Scientific Papers (Whitepapers)
- **Formats**: PDF, arXiv, LaTeX
- **Processing**:
  - Section detection (Abstract, Methods, Results, etc.)
  - Citation extraction and processing
  - Formula and equation handling
  - Reference linking
  - Author affiliation extraction
  - Integration with academic APIs (arXiv, CrossRef, Scopus)

### 4. Song Lyrics
- **Formats**: Text, LRC, MIDI
- **Processing**:
  - Verse/chorus structure detection
  - Timing information preservation
  - Metadata extraction (artist, album, year)
  - Language detection
  - Integration with Genius API
  - Repetition handling

### 5. Movie Subtitles
- **Formats**: SRT, SSA/ASS, VTT
- **Processing**:
  - Timing synchronization
  - Speaker identification
  - Multi-language support
  - Sound effect notation handling
  - Dialogue extraction
  - Scene context preservation

### 6. Pictures & Images
- **Formats**: JPG, PNG, TIFF, BMP
- **Processing**:
  - OCR enhancement and text extraction
  - Image feature extraction
  - CLIP model integration
  - Quality assessment
  - Metadata extraction (EXIF)
  - Scene classification
  - Object detection

### 7. Audio Files
- **Formats**: MP3, WAV, FLAC, M4A
- **Processing**:
  - Speech-to-text conversion
  - Audio feature extraction
  - Noise reduction
  - Speaker diarization
  - Music/speech separation
  - Tempo and rhythm analysis
  - Audio quality assessment

## Vector Storage Integration

Processed content can be stored in various vector databases:
- PostgreSQL (with pgvector)
- Elasticsearch
- Weaviate
- Pinecone
- Qdrant

## Quality Assessment

Each content type includes specialized quality metrics:
- Text quality (readability, coherence)
- Image quality (resolution, sharpness)
- Audio quality (SNR, clarity)
- Content relevance
- Language consistency
- Format integrity

## Getting Started

1. Clone the repository:
```bash
git clone git@github.com:eooo-io/ml-playground.git
```

2. Build the Docker container:
```bash
docker-compose build
```

3. Start Jupyter Lab:
```bash
docker-compose up
```

4. Access the notebooks at `http://localhost:8888`

## Available Notebooks

1. `text_cleaning_pipeline.ipynb`
   - Comprehensive text processing
   - Content quality assessment
   - Semantic deduplication
   - Context optimization

2. `media_preprocessing.ipynb`
   - Image/audio/video processing
   - Feature extraction
   - Quality enhancement
   - Media analysis

## Dependencies

All required dependencies are included in the Docker configuration. Key libraries:
- Text processing: PyPDF2, ebooklib, pysrt
- Media processing: opencv-python, librosa
- ML/AI: sentence-transformers, spacy
- Vector stores: psycopg2, elasticsearch-py

## Contributing

Contributions are welcome! Please read our contributing guidelines and submit pull requests for any enhancements.

## License

