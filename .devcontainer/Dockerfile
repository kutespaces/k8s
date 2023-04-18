# this image is built and updated weekly
# https://github.com/cse-labs/codespaces-images

FROM ghcr.io/cse-labs/k3d:latest

SHELL ["/bin/bash", "-c"]

# Upgrade k3d
# https://github.com/k3d-io/k3d/releases
RUN wget -q -O - https://raw.githubusercontent.com/rancher/k3d/main/install.sh | TAG=v5.4.9 bash

RUN mkdir -p /.kutespaces/state \
 && chown vscode:vscode /.kutespaces/state
COPY --from=vscode-extension /extension.vsix /.kutespaces/extension.vsix

# some images require specific values
ARG USERNAME=vscode

USER $USERNAME

# https://github.com/asdf-vm/asdf/releases
RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.3 \
 && . $HOME/.asdf/asdf.sh \
 && echo ". ~/.asdf/asdf.sh" >> ~/.zshrc
