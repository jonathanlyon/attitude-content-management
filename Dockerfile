FROM directus/directus:11.1.0

USER root
RUN corepack enable
USER node

RUN pnpm install @directus-labs/video-player-interface

# Clone the co-defy-video-interface extension from your GitHub repository
RUN git clone https://github.com/jonathanlyon/co-defy-video-interface.git /directus/extensions/interfaces/co-defy-video-interface

# Change directory to the extension folder and install dependencies
WORKDIR /directus/extensions/interfaces/co-defy-video-interface
RUN pnpm install

# Back to the Directus root folder
WORKDIR /directus