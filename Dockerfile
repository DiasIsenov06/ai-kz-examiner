FROM python:3.9-slim  
WORKDIR /app  
RUN apt-get update && apt install -y libgl1-mesa-glx libglib2.0-0  
COPY requirements.txt .  
RUN pip install -r requirements.txt  
COPY . .  
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"] 
