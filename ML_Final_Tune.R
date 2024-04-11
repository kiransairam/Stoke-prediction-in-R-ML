FLAGS1 <- flags(
  flag_numeric("nodes1", 128),
  flag_numeric("batch_size", 100),
  flag_string("activation1", "relu"),
  flag_string("activation2", "relu"),
  flag_numeric("learning_rate", 0.001),
  flag_numeric("epochs", 30),
  flag_numeric("nodes2", 250)
)


model =keras_model_sequential()

model %>%
  layer_dense(units = FLAGS1$nodes1, activation =FLAGS1$activation1, input_shape = dim(stroke_train_x)[2]) %>% 
  layer_dropout(0.5) %>% 
  layer_dense(units = FLAGS1$nodes2, activation = FLAGS1$activation2) %>% 
  layer_dropout(0.5) %>%
  layer_dense(units = 1, activation = 'sigmoid')

model %>% compile(
  optimizer = optimizer_adam(lr=FLAGS1$learning_rate),
  loss = 'binary_crossentropy',
  metrics = c('accuracy'))

model %>% fit(as.matrix(stroke_train_x)    , as.numeric(stroke_train_x_lab) , epochs = FLAGS1$epochs, batch_size= FLAGS1$batch_size,
  validation_data=list(as.matrix(stroke_validation_x) , as.numeric(stroke_validation_x_lab)))

