FROM directus/directus:11.1.0

USER root
RUN corepack enable
USER node

# RUN pnpm install @directus-labs/video-player-interface
# RUN pnpm install co-defy-video-player-02
#RUN pnpm install simple_yt_vp
RUN pnpm install co-defy-labs-video-interface
RUN pnpm install image-display-from-url
RUN pnpm install @directus/storage-driver-cloudinary