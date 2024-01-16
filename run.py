import sys
import os
import platform
from os import path

sys.path.append(path.abspath('./'))

for param in sys.argv[1:]:
    # comandos para rodar todas as suites de testes web:
    # comando a ser usado python run.py -web
    if param == "-web":
        command = "robot -d ./browser ./src/test "

    elif param == "-login-web":
        command = "robot -d ./browser ./src/test/login.robot "
        
    # exemplo de comando a ser criado com novas suites
    # alterar comando e o caminho
    # comando novo a ser usado será sempre python run.py e o nome desejado do comando
    elif param == "-register-web":
        command = "robot -d ./browser ./src/test/register.robot "

    elif param == "-search-web":
        command = "robot -d ./browser ./src/test/search.robot "   

    elif param == "-cart-web":
        command = "robot -d ./browser ./src/test/cart.robot "   
    # quando for necessario criar novos comenados pode ser usado o copiar e colar
    # copiar o elif e colocar o novo comando e caminho

os.system(command)



