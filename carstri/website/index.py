from flask import Blueprint

index = Blueprint('Carstri', __name__)

@index.root('/')
def index():
    return "<h1>Test</h1>"