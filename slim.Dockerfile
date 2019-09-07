FROM python:2
RUN git clone https://github.com/axiros/terminal_markdown_viewer.git
RUN pip install markdown pygments tabulate

CMD [ "python", "terminal_markdown_viewer/mdv/markdownviewer.py" ]
