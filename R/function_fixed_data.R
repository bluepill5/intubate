## Copyright (C) 2016 Roberto Bertolusso
##
## This file is part of intubate.
##
## intubate is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 2 of the License, or
## (at your option) any later version.
##
## intubate is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with intubate. If not, see <http://www.gnu.org/licenses/>.

function_fixed_data <- function(fixed, data, ...) data

## Functions that use *fixed* followed by *data*.

ntbt_function_fixed_data <-
  
  ## nlme
  ntbt_lme <-
  
  ## Interface for functions that use *fixed* followed by *data*.
  function(data, fixed, ...) {
    Call <- match.call()
    Call[[1]] <- get_function_name(as.character(Call[[1]]))
    if (is.null(ret <- eval(Call, envir = parent.frame())))
      return (invisible(data))
    ret
  }
