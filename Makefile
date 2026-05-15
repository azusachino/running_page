.PHONY: help tui test lint check format build ci

help:
	@echo "Available targets:"
	@echo "  make tui     - Run the Textual TUI"
	@echo "  make test    - Run Python tests"
	@echo "  make lint    - Run frontend lint"
	@echo "  make check   - Run frontend format check"
	@echo "  make format  - Format frontend files"
	@echo "  make build   - Build frontend assets"
	@echo "  make ci      - Run test, lint, check, and build"

tui:
	uv run run_page

test:
	uv run python -m unittest discover -s . -p 'test_*.py'

lint:
	bun run lint

check:
	bun run check

format:
	bun run format

build:
	bun run build

ci: test lint check build
