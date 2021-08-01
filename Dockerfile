# Copyright (C) 2021 Leandro Lisboa Penz <lpenz@lpenz.org>
# This file is subject to the terms and conditions defined in
# file 'LICENSE', which is part of this source code package.

FROM rustlang/rust:nightly-slim
RUN set -e -x; \
    rustup component add llvm-tools-preview; \
    cargo install grcov

COPY entrypoint /
CMD ["/entrypoint"]