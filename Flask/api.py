import numpy as np
from flask_cors import CORS
from flask import Flask, request, jsonify, render_template
from sklearn.preprocessing import StandardScaler, LabelEncoder
import pickle
import pandas as pd
import os

app = Flask(__name__) 
CORS(app)# Initialize the flask App
model = pickle.load(open('Flask/model.pkl', 'rb')) # Load the trained model

@app.route('/api', methods = ['GET']) # Homepage---Now API
def predict():
    inputData = str(request.args['query'])
    locN = inputData.find('N')
    locP = inputData.find('P')
    locK = inputData.find('K')
    locpH = inputData.find('A')
    locT = inputData.find('T')
    locH = inputData.find('H')
    locR = inputData.find('R')
    N = int(inputData[locN+1:locP])
    P = int(inputData[locP+1:locK])
    K = int(inputData[locK+1:locpH])
    ph = float(inputData[locpH+1:locT])
    temperature = float(inputData[locT+1:locH])
    humidity = float(inputData[locH+1:locR])
    rainfall = float(inputData[locR+1:])
    scaler = StandardScaler()
    final_features = np.array([[N, P, K, ph, temperature, humidity, rainfall]])
    final_scaled = scaler.fit_transform(final_features)
    label_encoder = LabelEncoder()
    data = pd.read_csv('Flask/crop_recommendation.csv')
    data['crop_name'] = label_encoder.fit_transform(data['crop_name'])
    prediction = model.predict(final_scaled)  # Make a prediction
    crop_prediction = label_encoder.inverse_transform(prediction)
    return jsonify({'predicted_crop': crop_prediction[0]})
#def home():
#    return render_template('index.html')

#@app.route('/predict', methods=['POST'])
'''
def predict():
     # Retrieve values by field name
    try:
        N = float(request.form['N'])
        P = float(request.form['P'])
        K = float(request.form['K'])
        ph = float(request.form['ph'])
        temperature = float(request.form['temperature'])
        humidity = float(request.form['humidity'])
        rainfall = float(request.form['rainfall'])
    except ValueError:
        return render_template('index.html', prediction_text="Invalid input values. Please enter valid numbers.")
    
    # Prepare the features for prediction
    scaler = StandardScaler()
    final_features = np.array([[N, P, K, ph, temperature, humidity, rainfall]])
    final_scaled = scaler.fit_transform(final_features)
    label_encoder = LabelEncoder()
    data = pd.read_csv('crop_recommendation.csv')
    data['crop_name'] = label_encoder.fit_transform(data['crop_name'])
    prediction = model.predict(final_scaled)  # Make a prediction
    crop_prediction = label_encoder.inverse_transform(prediction)


    return render_template('index.html', prediction_text=f'Ideal Crop: {crop_prediction}')
'''
if __name__ == "__main__":
    app.run(debug=True)
