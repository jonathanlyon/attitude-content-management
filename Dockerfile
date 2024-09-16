FROM directus/directus:11.1.0

USER root
RUN corepack enable
USER node


RUN pnpm install co-defy-labs-video-interface
RUN pnpm install image-display-from-url
RUN pnpm install co-defy-image-from-url
