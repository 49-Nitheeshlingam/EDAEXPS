age <- c(35, 65, 49, 30, 20, 40, 90, 54, 78, 45)
systolic_pressure <- c(122, 120, 120, 115, 130, 131, 118, 122, 120, 115)
diastolic_pressure <- c(83, 79, 78, 72, 90, 90, 82, 80, 82, 75)

stats <- function(x) {
  list(
    Samples = length(x),
    Min = min(x),
    Max = max(x),
    Median = median(x),
    Mean = mean(x),
    Variance = var(x),
    Std_Dev = sd(x)
  )
}

age_stats = stats(age)
systolic_stats <- stats(systolic_pressure)
diastolic_stats <- stats(diastolic_pressure)

stats_df <- data.frame(
  Statistic = c("Number of samples", "Minimum value", "Maximum value", "Median", "Mean", "Variance", "Standard deviation"),
  Age = unlist(age_stats),
  Systolic_Pressure = unlist(systolic_stats),
  Diastolic_Pressure = unlist(diastolic_stats)
)

print(stats_df)
