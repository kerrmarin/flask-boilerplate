# Shows all available commands for this makefile
help:
	@echo "    clean"
	@echo "        Remove python artifacts."
	@echo "    test"
	@echo "        Runs the tests using pytest."
	@echo "    run"
	@echo "        Runs the API service on your local machine on port 5000."

# Runs all tests for the server
test:
	pytest

# Starts the server listening on port 80
run:
	docker-compose up --build

# Cleans all python artifacts
# Deletes:
#   - *.pyc files
#   - *.pyo files
#   - __pycache__ directories
clean:
	find . -type f -name '*.py[co]' -delete -or -type d -name '__pycache__' -delete