lint:
	poetry run ruff check .

lint-fix:
	poetry run ruff check --fix .

format:
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

