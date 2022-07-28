# Define Local Variables
locals {
  s3_bucket_input_training_path = "${var.project_name}-training-data-${data.aws_caller_identity.current.account_id}-1"
  s3_bucket_output_models_path = "${var.project_name}-output-models-${data.aws_caller_identity.current.account_id}-1"
  s3_object_training_data = "../../data/iris.csv"
  input_training_path = "s3://${var.project_name}-training-data-${data.aws_caller_identity.current.account_id}-1"
  output_models_path = "s3://${var.project_name}-output-models-${data.aws_caller_identity.current.account_id}-1"
  lambda_function_name = "config-${var.project_name}-1"
  lambda_folder = "${var.handler_path}/"
  lambda_zip_filename = "${var.handler_path}.zip"
}