"""Two ways of binding parameters in SQLite3
"""
import pandas as pd
import sys, os, sqlite3
from sqlalchemy import create_engine, types

engine, db = None, None
# make db connection
engine = create_engine("sqlite:///train_db.db")

# qmark style 
if engine is not None:
    db = engine.connect()
    params = ['WIN', 'YAZ'] 
    sql = "select * from trainschedule where origin like ? or origin like ?"
    trains = pd.read_sql(sql=sql, con=db, params=params)
    print(f"qmark style:\n {trains}")


# named style
if engine is not None:
    db = engine.connect()
    params = {
        'value1': 'WIN',
        'value2': 'YAZ'
    }
    sql = "select * from trainschedule where origin like :value1 or origin like :value2"
    print(f'named style:\n {pd.read_sql(sql=sql, con=db, params=params)}')
