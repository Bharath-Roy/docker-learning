import sys
import requests
import os


if sys.version_info.major < 3 or sys.version_info.minor < 12:
    raise ValueError('Python version 3.12 or higher is required')



path = os.path.expanduser('~/python-text-files-folder')
if not os.path.exists(path):
    raise ValueError('python-text-files-folder is not present in home directory')


for i in range(1, 11):
    file = os.path.join(path, f'file{i}.txt')
    if not os.path.exists(file):
        raise ValueError(f'{file} is not present in python-text-files-folder')



url = 'https://jsonplaceholder.typicode.com/users/2'

print("Script is OK")
print("second time running")
response = requests.get(url)
print(response.status_code)




# Main validations to run this script
# 1. Python version should be 3.12 or higher
# 2. python-text-files-folder should be present in home directory
# 3. file1.txt to file10.txt should be present in python-text-files-folder
