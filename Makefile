SFTP_PATH = "towns.dreamhost.com:~/singmaster.cubing.net/"
URL       = "https://singmaster.cubing.net/"

.PHONY: deploy
deploy:
	rsync -avz \
		--exclude .DS_Store \
		--exclude .git \
		./ \
		${SFTP_PATH}
	echo "\nDone deploying. Go to ${URL}\n"
