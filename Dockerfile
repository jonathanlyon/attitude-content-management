# Use the base Directus image
FROM directus/directus:11.1.0

# Switch to root to install packages
USER root

# Enable corepack (pnpm) and install git
RUN corepack enable
RUN apk add --no-cache git

# Clone the co-defy-video-interface extension from your GitHub repository
RUN git clone https://github.com/jonathanlyon/co-defy-video-interface.git /directus/extensions/interfaces/co-defy-video-interface

# Change directory to the extension folder and install dependencies
WORKDIR /directus/extensions/interfaces/co-defy-video-interface
RUN pnpm install

# Return to Directus root folder
WORKDIR /directus

# Install Directus dependencies
RUN pnpm install

# Switch back to the node user for security
USER node