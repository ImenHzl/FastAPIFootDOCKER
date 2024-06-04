from fastapi import FastAPI
import json

app= FastAPI()

# Charger les données JSON depuis le fichier
with open("data/dataTeams.json", "r") as file:
    data = json.load(file)
@app.get("/teams")
def read_root():
    return data
