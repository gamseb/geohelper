# Geohelper
 <img src="./images/geohelper_logo.png" width="100" height="100">
 
### Motivation
As the name suggests Geohelper is a tool to be used when playing the "Geoguesser" game. I will keep expanding the application with more tools in the future.
### How to run
#### Option 1 (Linux):
- Make sure you have Python3 with pip installed
- (Optional) Use a virtual environment
  - $ `python3 -m venv venv`
  - $ `source venv/bin/activate`
- Install django 
  - $ `pip install django`
- Run the application:
  - $ `python manage.py runserver`
  - In the browser navigate to `localhost:8000`

#### Option 2 (Docker):
- Make sure Docker is installed and setup 
- $ `docker build -t geohelper -f dockerfile`
- $ `docker run -p 8000:8000 geohelper`
- In the browser navigate to `localhost:8000`

---
### How to run the tests (Linux)
- Make sure Firefox is installed and Geckodriver is in $PATH
  - https://github.com/mozilla/geckodriver/releases
- (Optional) Use a virtual environment
  - $ `python3 -m venv venv`
  - $ `source venv/bin/activate`
- Install requirements
  - $ `pip install -r tests/requirements.txt`
- Make sure the Geohelper application is running on port 8000
- Run the `run-tests.sh` file
  - $ `bash run-tests.sh`
- The test results can be found in the `test_reports` folder


![Flags](https://i.imgur.com/DXPqkRW.png)
