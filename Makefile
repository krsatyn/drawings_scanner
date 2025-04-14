VENV = .venv
VENVSCRIPTS = $(VENV)/Scripts
PYTHON = $(VENVSCRIPTS)/python
PIP = $(VENVSCRIPTS)/pip3

run: $(VENVSCRIPTS)/activate

$(VENVSCRIPTS)/activate: requirements.txt
	python -m venv $(VENV)
	$(PYTHON) -m pip install --upgrade pip 
	$(PIP) install -r requirements.txt

clean:
	rmdir /s /q $(VENV)