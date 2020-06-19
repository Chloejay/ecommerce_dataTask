import MySQLdb
from sqlalchemy import create_engine
import pandas as pd 
import logging 
logging.basicConfig(format= '%(asctime)s - %(message)s', datefmt='[%H:%M:%S]')
logger= logging.getLogger()
logger.setLevel(logging.INFO)

host ="localhost"
db ="ecommerceTask"
user ="root"
pswd ="password"

def load_data(user: str, pswd: str, db: str, table: str, file_path: str)-> None:
    engine = create_engine('mysql+mysqldb://%s:%s@localhost/%s'%(user, pswd, db))
    df = pd.read_csv(file_path)
    logging.info("Start to load data to MySQL.")
    return df.to_sql(table, con = engine, if_exists = 'append', index = False)


if __name__ == "__main__":

    HOST ="localhost"
    DB ="ecommerceTask"
    USER ="root"
    PSWD ="password"
    TABLE = "ListofOrders"
    DF_PATH = "../processedData/ListOfOrders.csv"
    load_data(USER, PSWD, DB, TABLE, DF_PATH)