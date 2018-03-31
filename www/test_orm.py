# -*- coding:utf-8 -*-
import orm
from models import User, Blog, Comment

def test():
    yield from orm.create_pool(user='root', password='password', database='awesome')

    u = User(name='Test', email='test@example.com', passwd='1234567890', image='about:blank')  
    yield from u.save()

for x in test():
    print('user =',x)