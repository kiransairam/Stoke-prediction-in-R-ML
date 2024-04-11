# Stoke-prediction-in-R-ML

Every year, heart disease, stroke, and other cardiovascular disorders claim more than 877,500
lives in the United States. The major causes of death in the US are heart disease and stroke,
respectively, which rank first and fifth. This dataset is used to assess a patient's risk of suffering
a stroke. To predict I used the following K-Nearest Neighbors Algorithm, Logistic Regression,
Decision Tree, and Artificial Neural Network.

Based on input characteristics like gender, age, numerous diseases, and smoking status, this
dataset is used to determine whether a patient is likely to get a stroke. The data rows each
provide pertinent information about the patient. Our goal is to predict whether the patient is
going to get a stroke or not by using the above-mentioned models.
This dataset contains 12 variables and 5000 observations, and the target variable is the Stroke,
one of the biggest problems in the dataset is data is unbalanced, we need to balance the data
before performing the models. In Dataset “id” are the patent id number,
“Gender”
, and “age”
of the patent, and “Hypertension” is whether the patient had it or not. The previous history of
heart disease “Ever Married” marital status of the patient, work type, Glucose level of the
patent, BMI Rate, Smoking status of the patent, and Stroke status.
The Variable is as follows:
we can download the dataset from the below link.
Stroke Prediction Dataset | Kaggle

1. Id
2. Gender
3. Age
4. Hypertension
5. Heart disease
6. Ever married
7. Work type
8. Residence type
9. Avg glucose level
10. Bmi
11. Smoking status
12. Stroke

Predicting the Stroke with this Imbalance data is more difficult than compared to balanced
data, we need to do a lot of work on the data to make it balanced. This project needed a
thorough review of the exploratory data and numerous decisions regarding the shrinking of
high cardinality predictors and missing values.
In this top 2 most AUC is both the “ANN” and “ANN with class weights” the value of Most AUC
is ANN with class weights. (0.9991). we got the least AUC in the Decision Tree which is 0.714.
because of the imbalance we got most of the accurate values.
Comparing All the models
While comparing all the models i got the most accuracy "ANN With Class Weights" which is
0.9971
the accuracy of GBM Decision tree is 0.714
The Accuracy of KNN is 0.7757
The Accuracy of LASSO is 0.952
The Accuracy of Ridge is 0.932
The Accuracy of Elastic Net is 0.923
The Accracy of ANN is 0.996
