# Assuming you saved your model using TensorFlow/Keras
from tensorflow.keras.models import load_model

model = load_model('plant_disease_model.h5')
print(model.summary())
classes = model.classes
print(classes)
