FROM alpine:latest AS font-builder

RUN apk --update add msttcorefonts-installer \
  && update-ms-fonts 

FROM debian:bookworm AS doc-builder

LABEL org.opencontainers.image.source="https://github.com/iktovr/diploma-latex-template"
LABEL org.opencontainers.image.description="Container image for building LaTeX documents"
LABEL org.opencontainers.image.licenses="GPL-3.0"

COPY --from=font-builder /usr/share/fonts/truetype/msttcorefonts /usr/share/fonts/truetype/msttcorefonts

RUN chmod -R 644 /usr/share/fonts/truetype/msttcorefonts/* \
  && apt-get update \
  && DEBIAN_FRONTEND=noninteractive \
  apt-get install --no-install-recommends --assume-yes \
  texlive-latex-base \
  texlive-xetex \
  texlive-latex-extra \
  texlive-plain-generic \
  texlive-lang-cyrillic \
  texlive-science \
  texlive-bibtex-extra \
  biber \
  latexmk \
  cm-super \
  fonts-liberation \
  texlive-fonts-recommended \
  fontconfig \
  && dpkg-query --showformat='${binary:Package}\n' --show '*-doc' \
  | xargs apt-get -y remove \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* \
  /usr/share/doc/* /usr/share/man/* \
  && fc-cache -f -v

WORKDIR /doc
