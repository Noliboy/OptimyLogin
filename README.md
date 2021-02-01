# OptimyLogin

Guide on the installation of Robot Framework and running the test scripts for Optimy login Application.

1. Dowload and install Python (https://www.python.org/downloads/)
 
2. Download and install Pip (https://pypi.org/project/pip/)

3. Configure PATH (Add python & pip to Path)

4. Use PIP to install robot framework 

			$ pip install robotframework

5. Use PIP to install selenium library

			$ pip install robotframework-seleniumlibrary
  
6. Download selenium webdrivers for Chrome (https://chromedriver.chromium.org/downloads)

7. Create a folder

8. Copy the files in this repository to the created folder

9. Go to the folder and create a [Results] folder

10. Before running the script change the testdata of ${valid_email} to any valid email under the login.robot file to avoid failed test results

11. Run the test scripts
  
			$ robot -d results Tests/login.robot

