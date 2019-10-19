FROM nfcore/base:1.7
LABEL authors="Alfred Ssekagiri" \
      description="Docker image containing all requirements for nf-core/uvrimetaseq pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-uvrimetaseq-1.0dev/bin:$PATH
