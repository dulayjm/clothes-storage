from flask import Flask, request, Response, jsonify
import numpy as np
import os
import cv2
import json
from PIL import Image
import pymongo


### 
# This is code for the server portion of the clothes app

MONGO_URI = 'mongodb+srv://admin:clothes-storage-admin@cluster0.pyizj.mongodb.net/test'

# Initialize the Flask application
app = Flask(__name__)

client = pymongo.MongoClient(MONGO_URI)
db = client['clothes-storage'] # insert the appropriate collection eventually 
# for coll in db.list_collection_names():
#     print(coll)

# Endpoints
@app.route('/health', methods=['GET'])
def health(): 
    response = {'okay!': 'health check up'}
    return Response(response=response, status=200, mimetype="application/json")

# TODO: paramaterize these endpoints to get the correct request data for the frontend

# route http posts to this method
@app.route('/user', methods=['POST', 'PUT', 'GET'])
def postNewUser():
    # convert string of image data to uint8

    source = db.users
    response = ''
    # we only want json requests for user information
    if request.method == 'POST' and request.is_json(): 
        content = request.json
        id_response = source.insert_one(content).inserted_id
        if id_response: 
            reponse = 'success!'

    elif request.method == 'PUT': 
        content = request.json
        id_response = source.find_one(content).inserted_id
        if id_response: 
            reponse = 'success!'

    elif request.method == 'GET':
        content = request.json
        id_response = source.get_one(content).inserted_id
        if id_response: 
            reponse = id_response
            # TODO: more verbose and checking on response for GET endpoints

    else:
        pass

    # response = {'message': 'image received. size='}
    return jsonify(response)

# TODO: maybe create something to just load all the data from the db and cache it or something 


@app.route('/shop', methods=['POST', 'PUT', 'GET'])
def postNewUser():
    # convert string of image data to uint8

    source = db.users
    response = ''
    # we only want json requests for user information
    if request.method == 'POST' and request.is_json(): 
        content = request.json
        id_response = source.insert_one(content).inserted_id
        if id_response: 
            reponse = 'success!'

    elif request.method == 'PUT': 
        content = request.json
        id_response = source.find_one(content).inserted_id
        if id_response: 
            reponse = 'success!'

    elif request.method == 'GET':
        content = request.json
        id_response = source.get_one(content).inserted_id
        if id_response: 
            reponse = id_response
            # TODO: more verbose and checking on response for GET endpoints

    else:
        pass

    # response = {'message': 'image received. size='}
    return jsonify(response)

@app.route('/lib', methods=['POST', 'PUT', 'GET'])
def postNewUser():
    # convert string of image data to uint8

    source = db.users
    response = ''
    # we only want json requests for user information
    if request.method == 'POST' and request.is_json(): 
        content = request.json
        id_response = source.insert_one(content).inserted_id
        if id_response: 
            reponse = 'success!'

    elif request.method == 'PUT': 
        content = request.json
        id_response = source.find_one(content).inserted_id
        if id_response: 
            reponse = 'success!'

    elif request.method == 'GET':
        content = request.json
        id_response = source.get_one(content).inserted_id
        if id_response: 
            reponse = id_response
            # TODO: more verbose and checking on response for GET endpoints

    else:
        pass

    # response = {'message': 'image received. size='}
    return jsonify(response)


# Private Methods
def saveImageToFolder(img): 
    save_path = '/Users/justindulay/Downloads/'
    file_name = "img.png"
    completeName = os.path.join(save_path, file_name)

    cv2.imwrite(completeName, img)

def doSomeComputerVisionThing(): 
    pass

# # start flask app
if __name__ == "__main__":
    app.run(host="localhost", port=3000)