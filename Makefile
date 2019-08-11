


lint:
	# (https://s3.amazonaws.com/video.udacity-data.com/topher/2019/May/5cda0d76_config/config.yml)
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203 app.py
