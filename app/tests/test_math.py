from app.controllers.math import inc, minus, power

def test_inc():
    assert inc(3)==4
def test_minus():
    assert minus(5)==4