🚀 Streamlit Docker Dev Test
A simple Streamlit app running in a Docker container.

🗃️ Project Structure

├── Dockerfile          
├── requirements.txt    
└── src
    └── main.py  

       
🛠️ Technologies Used
Python 3.12
Streamlit 1.41.1
Docker


💻 App Code (main.py)

import streamlit as st

st.title("Streamlit Docker Dev Test")
st.write("This is a Streamlit app running in Docker!")


📝 Dockerfile

FROM python:3.12-slim
WORKDIR /code
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY src /code/src
CMD ["streamlit", "run", "src/main.py", "--server.port=8501", "--server.address=0.0.0.0"]


🚀 Run Locally
Build the image:
docker build -t streamlit-app .

Run the container:
docker run -p 8501:8501 streamlit-app

Access the app: 
Open localhost:8501
