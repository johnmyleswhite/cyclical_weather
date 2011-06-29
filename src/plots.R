library('ProjectTemplate')
load.project()

for (day.limit in 10:365)
{
  p <- ggplot(subset(mean.temperature, DayOfYear <= day.limit), aes(x = DayOfYear, y = Temperature)) +
    geom_line() +
    xlab('') +
    ylab('') +
    xlim(0, 365) +
    ylim(with(new.york, range(Temperature))) +
    opts(axis.ticks = theme_blank()) +
    opts(axis.text.y =  theme_blank())
  ggsave(file.path('graphs', paste('standard_temperature_', day.limit - 9, '.png', sep = '')))
  
  p <- ggplot(subset(mean.temperature, DayOfYear <= day.limit), aes(x = DayOfYear, y = Temperature)) +
    geom_line() +
    geom_vline(xintercept = 0) +
    coord_polar() +
    xlab('') +
    ylab('') +
    xlim(0, 365) +
    ylim(with(new.york, range(Temperature))) +
    opts(axis.ticks = theme_blank()) +
    opts(axis.text.y =  theme_blank())
  ggsave(file.path('graphs', paste('polar_temperature_', day.limit - 9, '.png', sep = '')))
}
