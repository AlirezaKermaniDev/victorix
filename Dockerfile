# setting workdir globally (still needs to be referenced in each stage!)
ARG WORKDIR=/app


# build the flutter web app
#
# in the first stage just prepare a ubuntu container
# and install the flutter tooling to build flutter apps
FROM instrumentisto/flutter:latest AS FLUTTER_BUILDER

# setting the workdir
ARG WORKDIR

# setting the github repo information from 
# which the flutter sdk will be cloned.
ARG USER_NAME=flutter
ARG REPO_NAME=flutter
ARG BRANCH_NAME=stable

# preparing the ubuntu container with all necessary tools
RUN apt update -y
RUN apt install -y bash curl file git unzip zip xz-utils libglu1-mesa

# sometimes the Google servers respond a little slowly 
# which resulted in a failed handshake
# increasing the timeout solves this error!
ENV HTTP_TIMEOUT=5000

# here we use ADD to invalidad cache of the docker stages below when there is a new commit/version in the
# given flutter github repo on the given branch - watch out: depending on github api here!
# ADD https://api.github.com/repos/${USER_NAME}/${REPO_NAME}/git/refs/heads/${BRANCH_NAME} flutter_version.json
# RUN git clone https://github.com/${USER_NAME}/${REPO_NAME}.git -b ${BRANCH_NAME}

# now set the path to flutter and build flutter tool and precache all necessary tools this is good
# because as long as ADD doesn't invalidad these stages we don't have to rebuild this expensive part
# ENV PATH="$PATH:/flutter/bin"
#RUN flutter precache

# copy the flutter project and change dir into it
COPY . ${WORKDIR}
WORKDIR ${WORKDIR}

# run flutter clean, pub get and then build for web
#RUN flutter clean
#RUN flutter pub get
RUN flutter build web


# Serve the flutter web app
#
# in the second stage just copy the builded web files from the first
# stage and serve them as static website using basic nginx container
FROM nginx:latest

# setting the workdir
ARG WORKDIR

# tell which port to use (no necessarily needed)
EXPOSE 80

# copy the built flutter static website to the nignx directory
COPY --from=FLUTTER_BUILDER ${WORKDIR}/build/web /usr/share/nginx/html
