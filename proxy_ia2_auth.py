from flask import Flask, request, Response

app = Flask(__name__)

USERNAME = 'ia2_user'
PASSWORD = 'secure_ia2_pass'

def check_auth(username, password):
    return username == USERNAME and password == PASSWORD

def authenticate():
    return Response(
        'Authentification requise.\n',
        401,
        {'WWW-Authenticate': 'Basic realm="IA2 Proxy"'}
    )

@app.before_request
def require_auth():
    auth = request.authorization
    if not auth or not check_auth(auth.username, auth.password):
        return authenticate()

@app.route('/')
def index():
    return 'IA2 Proxy est en ligne et sécurisé.'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8081)
