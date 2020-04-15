import pandas
import psycopg2
conn = psycopg2.connect(host="localhost",database="db", user="user", password="pass")
cur = conn.cursor()

def insert(row, state, superset, flood=False):
    if row[state].upper() == 'both'.upper():
        cur.execute(insertQuery, (row['Carrier'],'Auto',state, superset))
        cur.execute(insertQuery, (row['Carrier'],'Fire',state, superset))
    elif row[state].upper() == 'fire'.upper():
        cur.execute(insertQuery, (row['Carrier'],'Fire',state, superset))
    elif row[state].upper() == 'auto'.upper():
        cur.execute(insertQuery, (row['Carrier'],'Auto',state, superset))
    elif row[state].upper() == 'fire/flood'.upper():
        cur.execute(insertQuery, (row['Carrier'],'Flood',state, superset))
        cur.execute(insertQuery, (row['Carrier'],'Fire',state, superset))
    elif row[state].upper() == 'yes'.upper() and superset == 'PL':
        cur.execute(insertQuery, (row['Carrier'],'Flood',state, superset))
    elif row[state].upper() == 'yes'.upper() and superset == 'CL' and not flood:
        cur.execute(insertQuery, (row['Carrier'],'Apts',state, superset))
    elif row[state].upper() == 'yes'.upper() and superset == 'CL' and flood:
        cur.execute(insertQuery, (row['Carrier'],'Flood',state, superset))


df = pandas.read_excel('carriers.xlsx', sheet_name='PL - ILINMI', dtype=str)
insertQuery = 'INSERT INTO "public"."carrier"("name", "type", "state", "superset") VALUES(%s, %s, %s, %s)'
df = df.fillna('')    

# print(df)
for index, row in df.iterrows():
    print(row['Carrier'], row['IL'], row['IN'], row['MI'])
    for state in ['IL', 'IN', 'MI']:
        insert(row, state, 'PL')


df = pandas.read_excel('carrier.xlsx', sheet_name='PL - FL', dtype=str)
for index, row in df.iterrows():
    # print(row['Carrier'], row['IL'], row['IN'], row['MI'])
    insert(row, 'FL', 'PL')

df = pandas.read_excel('carriers.xls', sheet_name='pl-flood', dtype=str)
df = df.fillna('')    

for index, row in df.iterrows():
    # print(row['Carrier'], row['IL'], row['IN'], row['MI'])
    for state in ['IL', 'IN', 'MI', 'FL']:
        insert(row, state, 'PL')

df = pandas.read_excel('carriers.xls', sheet_name='cl-flood', dtype=str)
df = df.fillna('')    

for index, row in df.iterrows():
    # print(row['Carrier'], row['IL'], row['IN'], row['MI'])
    for state in ['IL', 'IN', 'MI', 'FL']:
        insert(row, state, 'CL', True)

df = pandas.read_excel('carriers.xls', sheet_name='PL - Other States', dtype=str)
df = df.fillna('')   
for index, row in df.iterrows():
    # print(row['Carrier'], row['IL'], row['IN'], row['MI'])
    for state in list(df)[1:]:
        # print(state)
        insert(row, state, 'PL')

df = pandas.read_excel('carriers.xls', sheet_name='CL STATES APTS', dtype=str)
df = df.fillna('')   
for index, row in df.iterrows():
    # print(row['Carrier'], row['IL'], row['IN'], row['MI'])
    for state in list(df)[1:]:
        # print(state)
        insert(row, state, 'CL')

# super annoying revisit
# df = pandas.read_excel('carriers.xls', sheet_name='CL - ILINMIOH', dtype=str)
# df = df.fillna('')   
# for index, row in df.iterrows():
#     # print(row['Carrier'], row['IL'], row['IN'], row['MI'])
#     for state in list(df)[1:]:
#         # print(state)
#         insert(row, state, 'CL')

def insertSfr(row, state, typeIns):
    # change this to or
    if row[typeIns].upper() == 'yes'.upper():
        if typeIns == "SFR's (1-4 Units)":
            typeIns = "SFR"
        else:
            typeIns = "FourPlus"

        cur.execute(insertQuery, (row['Carrier'],typeIns ,state, 'CL'))
    elif row[typeIns].upper() == "Yes - CL's".upper():
        if typeIns == "SFR's (1-4 Units)":
            typeIns = "SFR"
        else:
            typeIns = "FourPlus"
        cur.execute(insertQuery, (row['Carrier'],typeIns ,state, 'CL'))


for state in ['FL', 'TX', 'OK', 'TN']:
    df = pandas.read_excel('carriers.xls', sheet_name='CL - '+state, dtype=str)
    df = df.fillna('')   
    for index, row in df.iterrows():
        # print(row['Carrier'], row['IL'], row['IN'], row['MI'])
        for typeIns in list(df)[1:]:
            insertSfr(row, state, typeIns)

conn.commit()


