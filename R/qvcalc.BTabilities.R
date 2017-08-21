qvcalc.BTabilities <- function(object, ...)
{
          vc <- vcov(object)
          cf <- coef(object)
          factorname <- attr(object, "factorname")
          modelcall <- attr(object, "modelcall")
          qvcalc.default(vc,
                         factorname = factorname,
                         estimates = cf,
                         modelcall = modelcall)
          }
