from flask import Flask
 
def InitIndex():
    app = Flask(__name__)
    app.config['SECRET_KEY'] = '1234'

    from .index import index

    app.register_blueprint(index, url_prefix='/')

    return app