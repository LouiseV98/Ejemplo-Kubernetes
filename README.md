# Ejemplo Kubernetes
 API creada con Flask usando Docker y después importándola en un clúster de Kubernetes.

## Introducción
Veremos entonces en este reporte, cómo hacer un ejemplo sencillo en el cual
crearemos una API con Flask usando Docker y después importándola en un clúster
de Kubernetes.
Estaré usando Python para crear la aplicación la cual mostrara solamente la cadena
de texto “Hello World” y mostrare algunas modificaciones y como hacer los cambios
para que surtan efecto. También usaré Visual Studio y Docker Desktop.

## Docker Desktop
Primero una ves teniendo Docker Desktop, el programa cuenta con una opción para
activar Kubernetes en esta misma para poder utilizar sus comandos.

![Tutorial](images/1.png)

En ajustes podemos encontrar la opción de activar Kubernetes y así un clúster,
después aplicamos y reiniciamos.
Ahora instalamos la biblioteca de Flask en Python la cual nos permitira crear la
aplicación.

### Nota: Es recomendable utilizar un entorno virtual en Python

Una vez teniendo un entorno virtual podemos ejecutar el siguiente comando para instalar las dependencias de Flask:
```bash
pip install Flask
```

Ya instalado, para aplicar los cambios, reiniciamos Visual Studio cerrándolo y volviéndolo a abrir.
Entonces ahora si comenzaremos a crear la aplicación:
```python
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/api/v1/hello', methods=['GET'])
def hello():
    return jsonify(message="Hello, World!")

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)

```
