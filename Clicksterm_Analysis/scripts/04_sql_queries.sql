{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "dfec268f-168b-4dd4-ba40-1bda2ea5a947",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Data successfully loaded into SQLite database.\n"
     ]
    }
   ],
   "source": [
    "import sqlite3\n",
    "import pandas as pd\n",
    "\n",
    "# Connect to SQLite DB\n",
    "conn = sqlite3.connect(\"clickstream.db\")\n",
    "\n",
    "# Load cleaned CSV\n",
    "df = pd.read_csv(\n",
    "    r\"C:\\Users\\sande\\Desktop\\HITESH PROJECT\\data\\clean_web_events.csv\"\n",
    ")\n",
    "\n",
    "# Write to SQL table\n",
    "df.to_sql(\"web_events\", conn, if_exists=\"replace\", index=False)\n",
    "\n",
    "# Close connection\n",
    "conn.close()\n",
    "\n",
    "print(\"Data successfully loaded into SQLite database.\")\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "996e5e8d-93e3-42c9-a7f7-d15c388cb940",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.12.7"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
