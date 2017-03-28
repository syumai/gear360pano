FROM jrottenberg/ffmpeg:3.2

RUN apt-get update \
		&& apt-get install -y --no-install-recommends \
			wget \
			unzip \
			hugin \
			# notify-send used by gear360pano
			libnotify-bin \ 
		&& rm -rf /var/lib/apt/lists/*
WORKDIR /app
RUN wget https://github.com/ultramango/gear360pano/archive/master.zip -O tmp.zip \
		&& unzip tmp.zip \
		&& rm tmp.zip \
		&& mv gear360pano-master gear360pano

ENTRYPOINT []

