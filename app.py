from bottle import abort, default_app, route


@route('/')
@route('/<code:int>')
def index(code: int = 200):
    '''Returns HTTP codes for testing'''
    return abort(code, 'Error %s' % code)


app = default_app()
