# Pass `--build-arg CLANG_TAG=latest` for the latest clang-format build
ARG CLANG_TAG=latest

FROM arogov/clang-format:${CLANG_TAG}

# Add git with apk --no-cache option: install updated package without caching
RUN apk --no-cache add git

ENTRYPOINT ["clang-format"]
CMD ["--help"]
