


help:
	@cat README.md
	@echo "\n\n"
	@echo "Usage:"
	@echo "   make build     - build image"
	@echo "   make publish   - build image"
	@echo "   make test      - build image"

build:
	docker build -t iapp/confluence-sync . --no-cache

publish:
	docker push iapp/confluence-sync

test:
	docker run --rm -it -e JIRA_USER=myemail@gmail.com -e JIRA_PASSWORD=SuperCOOLpassWord iapp/confluence-sync confluence-update FILE_PATH.md PAGE_ID "Page name in confluence"

