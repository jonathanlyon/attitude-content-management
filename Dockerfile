FROM directus/directus:11.1.0

USER root
RUN corepack enable
USER node

RUN pnpm install @directus-labs/video-player-interface
RUN pnpm install @jonathanlyon/co-defy-video-interface