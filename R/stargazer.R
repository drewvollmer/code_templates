## stargazer.R
## Template for stargazer
## Drew Vollmer 2019-11-21

library("stargazer")

stargazer(model1, model2,
          type = "latex",
          title = "Monte Carlo Simulation Regressions",
          covariate.labels = c("Observed Characteristics", "Price", "Intercept"),
          dep.var.labels = c("Mean Utility"),
          column.labels = c("Model 1", "Model 2"),
          out = "simulation_regression_table.tex",
          label = "reg:results")

## If too wide, exclude stats at the bottom that take up width
omit.stat=c("f", "ser"),

## Fixed effect boxes:
stargazer(fb3, fb1, fb2, mbb3, mbb1, mbb2,
          type = "latex",
          title = "Effect of Time to Event on Price",
          covariate.labels = c("Time to Event $\\leq$ 5 days", "$5 <$ Time to Event $\\leq$ 10 days",
                               "$10 <$ Time to Event $\\leq$ 15 days", "$15 <$ Time to Event $\\leq$ 20 days",
                               "$20 <$ Time to Event $\\leq$ 25 days", "$25 <$ Time to Event $\\leq$ 30 days",
                               "$30 <$ Time to Event $\\leq$ 40 days", "$40 <$ Time to Event $\\leq$ 50 days",
                               "$50 <$ Time to Event $\\leq$ 60 days", "$60 <$ Time to Event $\\leq$ 70 days",
                               "Time to Event $>$ 70 days", "Time to Event", "Intercept"),
          dep.var.labels = c("Price-to-Face Ratio"),
          column.labels = c(rep("Football", 3), rep("Basketball", 3)),
          omit = c("PriceLevelName", "EventName"),
          omit.labels = c("Quality FEs", "Game FEs"),
          omit.stat=c("f", "ser"),
          out = "time_face_value_regressions.tex",
          label = "reg:time-face-value")
## Careful: the order of the models (fb3, fb1, fb2, ...) affects whether the FE categories display properly.
## Best to order it so that FEs are added gradually.
