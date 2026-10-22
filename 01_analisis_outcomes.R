
# 4. Membuat grafik hasil klinis

data_grafik <- subset(
  clinical_outcomes,
  cohort == "Benchmark cohort" &
    outcome %in% c(
      "In-hospital mortality",
      "Unfavorable neurological outcome (mRS > 2)"
    )
)

label_grafik <- c(
  "Unfavorable\n(discharge)",
  "Mortality\n(hospital)",
  "Unfavorable\n(12 months)",
  "Unfavorable\n(24 months)"
)

png("figures/clinical_outcomes.png", width = 1200, height = 800, res = 150)
barplot(
  data_grafik$reported_value_pct,
  names.arg = label_grafik,
  main = "Clinical Outcomes After Microsurgical Clipping",
  ylab = "Reported percentage (%)",
  ylim = c(0, 5),
  col = "lightblue",
  las = 1
)
dev.off()
