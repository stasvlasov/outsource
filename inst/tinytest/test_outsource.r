## make simple script
script_file_name <- tempfile(pattern = "outsource_test_script_"
                           , fileext = ".r")
writeLines("9 + 32", con = script_file_name)

expect_equal(
    outsource(script_file_name, . + 1)
  , 42)

expect_equal(
    outsource(script_file_name, . + 1 + "ala")
  , NULL)

expect_equal(
    outsource(script_file_name, .path, bind_file_path = TRUE)
  , script_file_name)

expect_equal(
    outsource(paste0(script_file_name, "non_existing_file"), . + 1 + "ala", return_if_no_file = 0)
  , 0)
