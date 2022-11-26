lint:
	poetry run flake8 .

format:
	poetry run isort --quiet .
	poetry run black .

typecheck:
	poetry run mypy .

test:
	poetry run pytest

preflight:
	make format
	@echo ""
	make lint
	@echo ""
	make typecheck

