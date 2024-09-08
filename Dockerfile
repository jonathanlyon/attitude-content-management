FROM directus/directus:11.0.2

USER root
RUN corepack enable
USER node

RUN pnpm install @directus-labs/video-player-interface