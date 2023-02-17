.PHONY: 512w
512w:
	script/512w.fish

DOMAIN    = singmaster.cubing.net
SFTP_PATH = towns.dreamhost.com:~/${DOMAIN}/
URL       = https://${DOMAIN}/

.PHONY: deploy
deploy:
	rsync -avz \
		--exclude .DS_Store \
		--exclude .git \
		./ \
		"${SFTP_PATH}"
	echo "\nDone deploying. Go to ${URL}\n"

.PHONY: open
open:
	open "${URL}"
