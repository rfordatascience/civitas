#' Value matching for absences
#'
#' This provides a more succinct and intuitive interface to determine if a value doesn't exist in a table.
#' Avoids difficult to type and read \code{!a \%in\% b}
#'
#' @param x vector or \code{NULL}: the values to be matched.
#' @param table vector or \code{NULL}: the values to be matched against
#' @rdname no_match
#' @examples \dontrun{
#'  filter(mtcars, carb %notin% c(1,3)) }
#' @export
`%notin%` <- function(x, table) {

  match(x, table, nomatch = 0L) == 0L

}
