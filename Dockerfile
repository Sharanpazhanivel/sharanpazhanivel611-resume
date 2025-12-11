FROM hugomods/hugo:exts

COPY . /src

# Build site.
WORKDIR /src/sharanresume
RUN hugo --minify

