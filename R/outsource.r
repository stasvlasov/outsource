##' This function evaluates the script at `file_path` and binds what this script returns to `.` variable and then evaluates `what_to_do` with this variable added to the evaluation environment.
##' 
##' @param file_path Path to R script
##' @param what_to_do Object to be evaluated (see `expr` argument in `eval`)
##' @param return_if_error What to return if error occurred
##' @param return_if_no_file What to return if there is no script
##' @param bind_file_path Whether to also bind `file_path` as `.path`
##' @return Evaluation result
##' 
##' @export 
outsource <- function(file_path, what_to_do
                    , return_if_error = NULL
                    , return_if_no_file = return_if_error
                    , bind_file_path = FALSE) {
    if(file.exists(file_path)){
        val <- source(file_path, chdir = TRUE)$value
        res <- eval(sys.call()[[3]]
                  , envir = if(isTRUE(bind_file_path)) {
                                list(. = val, .path = file_path)
                            } else {
                                list(. = val)
                            }
                  , enclos = parent.frame()) |>
            try()
        if(!inherits(res, "try-error")) {
            return(res)
        } else {
            return(return_if_error)
        }
    } else {
        return(return_if_no_file)
    }
}
