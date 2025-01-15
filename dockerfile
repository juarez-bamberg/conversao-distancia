# Use uma imagem base Python leve
FROM python:3.13.0

# Defina o diretório de trabalho
WORKDIR /app

# Copie o conteúdo da aplicação para o contêiner
COPY . /app

# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Exponha a porta 5000
EXPOSE 5000

# Comando para iniciar o Gunicorn
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]
