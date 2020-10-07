import pytest
from app import app

@pytest.fixture
def client():
    app.app.config['TESTING'] = True
    with app.app.test_client() as client:
        yield client


### Run to see failed test
#def test_hello_add():
#    assert add(test_hello_add.x) == 12

def test_route_home():
    rv = client.get('/')
    print(rv.data)
    assert b'No entries here so far' in rv.data
