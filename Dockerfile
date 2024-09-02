FROM python:3.12-slim
ENV PYTHONUNBUFFERED 1
RUN pip install requests
RUN mkdir /code
COPY script.py /code/
RUN mkdir ~/python-text-files-folder
RUN touch ~/python-text-files-folder/file1.txt
RUN touch ~/python-text-files-folder/file2.txt
RUN touch ~/python-text-files-folder/file3.txt
RUN touch ~/python-text-files-folder/file4.txt
RUN touch ~/python-text-files-folder/file5.txt
RUN touch ~/python-text-files-folder/file6.txt
RUN touch ~/python-text-files-folder/file7.txt
RUN touch ~/python-text-files-folder/file8.txt
RUN touch ~/python-text-files-folder/file9.txt
RUN touch ~/python-text-files-folder/file10.txt
WORKDIR /code
CMD ["python", "script.py"]
