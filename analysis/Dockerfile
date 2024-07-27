FROM ubuntu

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y mysql-client percona-toolkit curl unzip
RUN set -eux; \
	ARCH=$(uname -m); \
	if [ "$ARCH" = "x86_64" ]; then \
	ALP_URL="https://github.com/tkuchiki/alp/releases/download/v1.0.11/alp_linux_amd64.zip"; \
	elif [ "$ARCH" = "aarch64" ]; then \
	ALP_URL="https://github.com/tkuchiki/alp/releases/download/v1.0.11/alp_linux_arm64.zip"; \
	else \
	echo "Unsupported: $ARCH"; \
	exit 1; \
	fi; \
	curl -LO $ALP_URL; \
	unzip alp_linux_*.zip; \
	rm alp_linux_*.zip; \
	mv alp /usr/local/bin/; \
	chmod +x /usr/local/bin/alp;

CMD [ "/bin/bash" ]
