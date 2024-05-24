FROM python:3.8
RUN apt-get update && \
    apt-get install -y nano

# Copiamos los tres archivos YAML y el script Python con el mensaje "Hola" al contenedor
COPY playbooks/ /ansible/playbooks/
COPY prueba.py /ansible/

# Directorio de trabajo
WORKDIR /ansible

# Instalamos Ansible en Docker
RUN pip install ansible

# Ejecutar los tres yml
CMD ansible-playbook playbooks/instalacion.yaml && \
    ansible-playbook playbooks/pythonenv.yml && \
    ansible-playbook playbooks/script.yml
